DROP DATABASE IF EXISTS solapa;
CREATE DATABASE solapa;
USE solapa;

CREATE TABLE eventos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255),
  inicio DATETIME,
  fin DATETIME,
  INDEX(inicio, fin)
);

DELIMITER $$

CREATE PROCEDURE insertar_evento (
  IN p_titulo VARCHAR(255),
  IN p_inicio DATETIME,
  IN p_fin DATETIME
)
BEGIN
  IF EXISTS (
    SELECT 1 FROM eventos
    WHERE inicio < p_fin AND fin > p_inicio
  ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Error: El evento se solapa con otro.';
  ELSE
    INSERT INTO eventos (titulo, inicio, fin)
    VALUES (p_titulo, p_inicio, p_fin);
  END IF;
END $$

DELIMITER ;

-- Ejemplo de uso
CALL insertar_evento('Evento 1', '2023-01-01 10:00:00', '2023-01-01 11:00:00');
CALL insertar_evento('Evento 2', '2023-01-01 11:30:00', '2023-01-01 12:00:00');

