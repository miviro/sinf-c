SET GLOBAL event_scheduler = ON;

-- ========================================
-- USUARIOS Y PERMISOS
-- =======================================

-- Crear usuarios
DROP USER IF EXISTS 'cliente'@'localhost';
DROP USER IF EXISTS 'admin'@'localhost';

CREATE USER 'cliente'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';

-- Permisos para cliente
GRANT SELECT, INSERT, UPDATE ON taquilla.Cliente TO 'cliente'@'localhost';
GRANT SELECT, INSERT, UPDATE ON taquilla.Transaccion TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Espectaculo TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Evento TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Localidad TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Espectaculo_TipoUsuario TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Coste TO 'cliente'@'localhost';

GRANT SELECT ON taquilla.Vista_precio_entradas_libres_evento TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Vista_eventos_abiertos_para_espectaculo TO 'cliente'@'localhost';
GRANT SELECT ON taquilla.Vista_eventos_por_fecha TO 'cliente'@'localhost';

-- Permisos para admin
GRANT ALL PRIVILEGES ON taquilla.* TO 'admin'@'localhost';


GRANT SELECT ON taquilla.Vista_aforo_evento TO 'admin'@'localhost';
GRANT SELECT ON taquilla.Vista_Top10_espectaculos TO 'admin'@'localhost';
GRANT SELECT ON taquilla.Vista_Beneficios_Evento TO 'admin'@'localhost';

USE taquilla;

-- Evento programado para ejecutar la verificación cada minuto
DELIMITER //
DROP EVENT IF EXISTS verificar_aforo_periodico;
CREATE EVENT verificar_aforo_periodico
ON SCHEDULE EVERY 1 MINUTE
DO
BEGIN
    CALL verificar_aforo_eventos();
    CALL cerrar_eventos();
    CALL finalizar_eventos();
END//
DELIMITER ;