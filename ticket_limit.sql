DELIMITER //
CREATE TRIGGER check_ticket_limit
BEFORE INSERT ON Transaccion
FOR EACH ROW
BEGIN
    DECLARE ticket_count INT;
    
    SELECT COUNT(*) INTO ticket_count
    FROM Transaccion
    WHERE datos_bancarios = NEW.datos_bancarios
    AND fecha = NEW.fecha
    AND recinto_id = NEW.recinto_id
    AND espectaculo_id = NEW.espectaculo_id;
    
    IF ticket_count >= 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Maximum ticket limit (10) reached for this event';
    END IF;
END//
DELIMITER ;