-- ===============================================
-- CREACIÓN DE LAS RELACIONES DE LA BASE DE DATOS
-- ===============================================

DROP DATABASE IF EXISTS taquilla;
CREATE DATABASE taquilla;
USE taquilla;

CREATE TABLE Cliente (
  datos_bancarios VARCHAR(255) PRIMARY KEY
);

CREATE TABLE TiposDeUsuarios (
tipo_usuario ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') PRIMARY KEY);

CREATE TABLE Recinto (
  id_nombre VARCHAR(255) PRIMARY KEY,
  aforo_max INT NOT NULL COMMENT 'Mayor que 0'
);

CREATE TABLE Espectaculo (
  id_espectaculo INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  tipo ENUM('Deportivo', 'Musical', 'Educativo') 
);

CREATE TABLE Evento (
  fecha DATETIME,
  recinto_id VARCHAR(255),
  espectaculo_id INT,
  cancelaciones INT DEFAULT 0,
  estado ENUM('Finalizado', 'Abierto', 'Cerrado') NOT NULL,
  fecha_fin DATETIME NOT NULL,
  PRIMARY KEY (fecha, recinto_id, espectaculo_id),
  FOREIGN KEY (recinto_id) REFERENCES Recinto(id_nombre),
  FOREIGN KEY (espectaculo_id) REFERENCES Espectaculo(id_espectaculo)
);

CREATE TABLE Localidad (
  ubicacion INT COMMENT 'mayor que 0',
  fecha DATETIME,
  recinto_id VARCHAR(255),
  espectaculo_id INT,
  PRIMARY KEY (ubicacion, fecha, recinto_id, espectaculo_id),
  FOREIGN KEY (fecha, recinto_id, espectaculo_id) REFERENCES Evento(fecha, recinto_id, espectaculo_id)
);

CREATE TABLE Espectaculo_TipoUsuario (
  espectaculo_id INT NOT NULL,
  tipo_usuario ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL,
  PRIMARY KEY (espectaculo_id, tipo_usuario),
  FOREIGN KEY (espectaculo_id) REFERENCES Espectaculo(id_espectaculo),
  FOREIGN KEY (tipo_usuario) REFERENCES TiposDeUsuarios(tipo_usuario)
);

CREATE TABLE Coste (
  ubicacion INT,
  fecha DATETIME,
  recinto_id VARCHAR(255),
  espectaculo_id INT,
  tipo_usuario ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'),
  precio INT NOT NULL,
  PRIMARY KEY (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario),
  FOREIGN KEY (ubicacion, fecha, recinto_id, espectaculo_id) REFERENCES Localidad(ubicacion, fecha, recinto_id, espectaculo_id),
  FOREIGN KEY (tipo_usuario) REFERENCES TiposDeUsuarios(tipo_usuario),
  FOREIGN KEY (espectaculo_id, tipo_usuario) REFERENCES Espectaculo_TipoUsuario(espectaculo_id, tipo_usuario)
);

CREATE TABLE Transaccion (
  id_transaccion INT PRIMARY KEY AUTO_INCREMENT,
  datos_bancarios VARCHAR(255) NOT NULL,
  estado ENUM('compra', 'reserva', 'anulada') NOT NULL,
  ubicacion INT NOT NULL,
  fecha DATETIME NOT NULL,
  recinto_id VARCHAR(255) NOT NULL,
  espectaculo_id INT NOT NULL,
  tipo_usuario ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL,
  FOREIGN KEY (datos_bancarios) REFERENCES Cliente(datos_bancarios),
  FOREIGN KEY (tipo_usuario) REFERENCES TiposDeUsuarios(tipo_usuario),
  FOREIGN KEY (espectaculo_id, tipo_usuario) REFERENCES Espectaculo_TipoUsuario(espectaculo_id, tipo_usuario),
  FOREIGN KEY (ubicacion, fecha, recinto_id, espectaculo_id) REFERENCES Localidad(ubicacion, fecha, recinto_id, espectaculo_id)
);

-- No vender entradas duplicadas
CREATE UNIQUE INDEX Transaccion_index_0 ON Transaccion (ubicacion, fecha, recinto_id, espectaculo_id);

-- =============================
-- PROCEDIMIENTOS Y TRIGGERS
-- =============================
-- Procedimiento para cancelar una reserva

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
    DECLARE v_estado_evento ENUM('Finalizado', 'Abierto', 'Cerrado');
    
    -- Get the transaction details
    SELECT fecha, recinto_id, espectaculo_id, estado, datos_bancarios 
    INTO v_fecha, v_recinto_id, v_espectaculo_id, v_estado, v_transaction_datos_bancarios
    FROM Transaccion 
    WHERE id_transaccion = p_id_transaccion;
    
    -- Get the event state
    SELECT estado INTO v_estado_evento
    FROM Evento
    WHERE fecha = v_fecha 
    AND recinto_id = v_recinto_id 
    AND espectaculo_id = v_espectaculo_id;
    
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
    ELSEIF v_estado_evento != 'Abierto' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only reservations for open events can be canceled';
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

-- Procedimiento para evitar una reserva/compra sobre un evento finalizado o cerrado
DROP TRIGGER IF EXISTS validar_estado_evento_transaccion;

DELIMITER //

CREATE TRIGGER validar_estado_evento_transaccion
BEFORE INSERT ON Transaccion
FOR EACH ROW
BEGIN
  DECLARE estado_evento ENUM('Finalizado', 'Abierto', 'Cerrado');

  SELECT estado INTO estado_evento
  FROM Evento
  WHERE fecha = NEW.fecha
    AND recinto_id = NEW.recinto_id
    AND espectaculo_id = NEW.espectaculo_id;

  IF estado_evento IS NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No existe un evento con esos datos.';
  ELSEIF estado_evento IN ('Finalizado', 'Cerrado') THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No se permiten transacciones sobre eventos cerrados o finalizados.';
  END IF;
END;
//

DELIMITER ;

-- Evitar que un evento se solape con otro
DELIMITER //
DROP TRIGGER IF EXISTS evitar_solapamiento_eventos;
CREATE TRIGGER evitar_solapamiento_eventos
BEFORE INSERT ON Evento
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Evento
        WHERE recinto_id = NEW.recinto_id
          AND (
            (NEW.fecha BETWEEN fecha AND fecha_fin) 
            OR
            (NEW.fecha_fin BETWEEN fecha AND fecha_fin) 
            OR
            (fecha BETWEEN NEW.fecha AND NEW.fecha_fin)
            OR
            (fecha_fin BETWEEN NEW.fecha AND NEW.fecha_fin)
          )
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El evento se solapa con otro';
    END IF;
END;
//
DELIMITER ;

-- Limitar las compras de un cliente a 10
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

-- Trigger para convertir reservas en compras cuando el evento se cierra
DELIMITER //
DROP TRIGGER IF EXISTS convertir_reservas_en_compras;
CREATE TRIGGER convertir_reservas_en_compras
AFTER UPDATE ON Evento
FOR EACH ROW
BEGIN
    IF NEW.estado = 'Cerrado' AND OLD.estado = 'Abierto' THEN
        -- Actualizar todas las reservas a compras
        UPDATE Transaccion 
        SET estado = 'compra'
        WHERE fecha = NEW.fecha 
        AND recinto_id = NEW.recinto_id 
        AND espectaculo_id = NEW.espectaculo_id
        AND estado = 'reserva';
    END IF;
END//
DELIMITER ;



-- ================================
-- VISTAS
-- ================================

-- Vista para ver el aforo de los eventos
DROP VIEW IF EXISTS Vista_aforo_evento;

CREATE VIEW Vista_aforo_evento AS
SELECT 
    Evento.recinto_id, 
    Evento.espectaculo_id, 
    Evento.fecha, 
    -- Sumo las transacciones cuando su estado es 'compra'
    SUM(CASE WHEN Transaccion.estado = 'compra' THEN 1 ELSE 0 END) AS aforo_vendido,
    -- Sumo las transacciones cuando su estado es 'reserva'
    SUM(CASE WHEN Transaccion.estado = 'reserva' THEN 1 ELSE 0 END) AS aforo_reservado,
    -- Uso el atributo cancelaciones de Evento
    Evento.cancelaciones AS aforo_anulado,
    Recinto.aforo_max

FROM Transaccion

JOIN Evento ON Evento.recinto_id = Transaccion.recinto_id
            AND Evento.espectaculo_id = Transaccion.espectaculo_id
            AND Evento.fecha = Transaccion.fecha

JOIN Recinto ON Evento.recinto_id = Recinto.id_nombre

GROUP BY Evento.recinto_id, Evento.espectaculo_id, Evento.fecha, Recinto.aforo_max, Evento.cancelaciones;

-- Vista para ver los beneficios de los eventos
DROP VIEW IF EXISTS Vista_Beneficios_Evento;

CREATE VIEW Vista_Beneficios_Evento AS
SELECT 
    C.recinto_id, 
    C.fecha, 
    C.espectaculo_id,

    -- sumamos los beneficios si hay al menos un T con estado 'compra' sino el precio sería directamente 0
    SUM(CASE WHEN T.estado = 'compra' THEN C.precio ELSE 0 END) AS beneficios,
    
    SUM(C.precio) AS beneficio_total

FROM Coste C
JOIN Localidad L ON L.recinto_id = C.recinto_id
                 AND L.fecha = C.fecha
                 AND L.espectaculo_id = C.espectaculo_id
                 AND L.ubicacion = C.ubicacion

LEFT JOIN Transaccion T ON T.recinto_id = C.recinto_id
                        AND T.fecha = C.fecha
                        AND T.espectaculo_id = C.espectaculo_id
                        AND T.ubicacion = C.ubicacion
                        AND T.tipo_usuario = C.tipo_usuario

GROUP BY C.recinto_id, C.fecha, C.espectaculo_id;


-- Vista para ver los eventos abiertos para cada espectáculo
DROP VIEW IF EXISTS Vista_eventos_abiertos_para_espectaculo;

CREATE VIEW Vista_eventos_abiertos_para_espectaculo AS

SELECT Evento.espectaculo_id, Evento.fecha, Evento.recinto_id
FROM Evento
JOIN Espectaculo on Espectaculo.id_espectaculo = Evento.espectaculo_id
WHERE Evento.estado = 'Abierto'
GROUP BY Evento.espectaculo_id, Evento.fecha, Evento.recinto_id;

-- Vista para que permita al cliente ver los eventos que hay entre dos fechas
DROP VIEW IF EXISTS Vista_eventos_por_fecha;

CREATE VIEW Vista_eventos_por_fecha AS
SELECT 
    Evento.fecha,
    Evento.fecha_fin,
    Evento.recinto_id,
    Espectaculo.nombre
FROM Evento
JOIN Espectaculo ON Espectaculo.id_espectaculo = Evento.espectaculo_id
WHERE Evento.estado = 'Abierto';

-- Vista para ver el precio de las entradas libres que hay para un evento
DROP VIEW IF EXISTS Vista_precio_entradas_libres_evento;

CREATE VIEW Vista_precio_entradas_libres_evento AS
SELECT Coste.fecha, Coste.recinto_id, Coste.espectaculo_id, Coste.precio, Coste.tipo_usuario, Coste.ubicacion
FROM Coste
LEFT JOIN Transaccion ON Transaccion.recinto_id = Coste.recinto_id
   AND Transaccion.fecha = Coste.fecha
   AND Transaccion.espectaculo_id = Coste.espectaculo_id
   AND Transaccion.ubicacion = Coste.ubicacion
JOIN Evento on Evento.espectaculo_id = Coste.espectaculo_id
WHERE (Transaccion.ubicacion IS NULL)
      AND Evento.estado = 'Abierto'
      
GROUP BY Coste.fecha, Coste.recinto_id, Coste.espectaculo_id, Coste.precio, Coste.tipo_usuario, Coste.ubicacion;


-- Vista para ver los 10 espectáculos que más dinero generan
DROP VIEW IF EXISTS Vista_Top10_espectaculos;

CREATE VIEW Vista_Top10_espectaculos AS
SELECT 
    e.id_espectaculo,
    e.nombre AS nombre_espectaculo,
    SUM(c.precio) as total_ingresos
FROM Espectaculo e
JOIN Evento ev ON e.id_espectaculo = ev.espectaculo_id
JOIN Localidad l ON ev.fecha = l.fecha AND ev.recinto_id = l.recinto_id AND ev.espectaculo_id = l.espectaculo_id
JOIN Coste c ON l.ubicacion = c.ubicacion AND l.fecha = c.fecha AND l.recinto_id = c.recinto_id AND l.espectaculo_id = c.espectaculo_id
JOIN Transaccion t ON c.ubicacion = t.ubicacion AND c.fecha = t.fecha AND c.recinto_id = t.recinto_id AND c.espectaculo_id = t.espectaculo_id AND c.tipo_usuario = t.tipo_usuario
WHERE t.estado = 'compra'
GROUP BY e.id_espectaculo, e.nombre
ORDER BY total_ingresos DESC
LIMIT 10;

-- ================================
-- EVENTOS PROGRAMADOS
-- ================================

-- Tabla para registrar violaciones de aforo
CREATE TABLE IF NOT EXISTS Auditoria_Aforo (
    id_auditoria INT PRIMARY KEY AUTO_INCREMENT,
    fecha_verificacion DATETIME NOT NULL,
    fecha_evento DATETIME NOT NULL,
    recinto_id VARCHAR(255) NOT NULL,
    espectaculo_id INT NOT NULL,
    aforo_maximo INT NOT NULL,
    localidades_actuales INT NOT NULL,
    FOREIGN KEY (fecha_evento, recinto_id, espectaculo_id) REFERENCES Evento(fecha, recinto_id, espectaculo_id)
);

-- Procedimiento para verificar el aforo de los eventos
DELIMITER //
CREATE PROCEDURE verificar_aforo_eventos()
BEGIN
    -- Insertar en la tabla de auditoría los eventos que superan el aforo
    INSERT INTO Auditoria_Aforo (
        fecha_verificacion,
        fecha_evento,
        recinto_id,
        espectaculo_id,
        aforo_maximo,
        localidades_actuales
    )
    SELECT 
        NOW(),
        e.fecha,
        e.recinto_id,
        e.espectaculo_id,
        r.aforo_max,
        COUNT(l.ubicacion) as num_localidades
    FROM Evento e
    JOIN Recinto r ON e.recinto_id = r.id_nombre
    JOIN Localidad l ON e.fecha = l.fecha 
        AND e.recinto_id = l.recinto_id 
        AND e.espectaculo_id = l.espectaculo_id
    WHERE e.estado IN ('Abierto', 'Cerrado')
    GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, r.aforo_max
    HAVING COUNT(l.ubicacion) > r.aforo_max;
END//
DELIMITER ;




