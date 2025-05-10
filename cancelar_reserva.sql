DELIMITER //
CREATE PROCEDURE cancelar_reserva(
    IN p_id_transaccion INT,
    IN p_datos_bancarios VARCHAR(255)
)
BEGIN
    DECLARE v_fecha VARCHAR(255);
    DECLARE v_recinto_id VARCHAR(255);
    DECLARE v_espectaculo_id INT;
    DECLARE v_estado VARCHAR(20);
    DECLARE v_transaction_datos_bancarios VARCHAR(255);
    
    -- Get the transaction details
    SELECT fecha, recinto_id, espectaculo_id, estado, datos_bancarios 
    INTO v_fecha, v_recinto_id, v_espectaculo_id, v_estado, v_transaction_datos_bancarios
    FROM Transaccion 
    WHERE id_transaccion = p_id_transaccion;
    
    -- Check if the transaction exists and is a reservation
    IF v_estado IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transaction not found';
    ELSEIF v_estado != 'reserva' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only reservations can be canceled';
    ELSEIF v_transaction_datos_bancarios != p_datos_bancarios THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Unauthorized: datos_bancarios do not match';
    END IF;
    
    -- Start transaction
    START TRANSACTION;
    
    -- Increment cancelaciones counter in Evento
    UPDATE Evento 
    SET cancelaciones = cancelaciones + 1
    WHERE fecha = v_fecha 
    AND recinto_id = v_recinto_id 
    AND espectaculo_id = v_espectaculo_id;
    
    -- Delete the reservation from Transaccion
    DELETE FROM Transaccion 
    WHERE id_transaccion = p_id_transaccion;
    
    COMMIT;
END//
DELIMITER ;