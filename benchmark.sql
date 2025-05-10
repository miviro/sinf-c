SET autocommit=0;
START TRANSACTION;

-- Variables para reutilización
SET @start_time = NOW();

-- Compra 1
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6360', 'compra', 19, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 2
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8433', 'compra', 18, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 3
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9097', 'compra', 39, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 4
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7132', 'compra', 4, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 1
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1109', 'reserva', 22, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 2
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6642', 'reserva', 39, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Reserva 3
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3259', 'reserva', 20, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 5
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5237', 'compra', 10, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 6
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5991', 'compra', 13, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 4
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6642', 'reserva', 40, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Anulación 1
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5862' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 24 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5862');
-- Anulación 2
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2616' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 32 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2616');
-- Anulación 3
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1944' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1944');
-- Anulación 4
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1982' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 40 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1982');
-- Compra 7
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5572', 'compra', 2, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Anulación 5
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6037' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6037');
-- Anulación 6
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6263' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6263');
-- Compra 8
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8622', 'compra', 31, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 9
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6676', 'compra', 36, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Anulación 7
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7278' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7278');
-- Anulación 8
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9598' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 17 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9598');
-- Reserva 5
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9369', 'reserva', 2, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 6
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4946', 'reserva', 37, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Anulación 9
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8772' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8772');
-- Anulación 10
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5038' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 38 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5038');
-- Compra 10
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7132', 'compra', 12, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 7
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6642', 'reserva', 19, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Anulación 11
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3649' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3649');
-- Reserva 8
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7780', 'reserva', 4, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 11
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8924', 'compra', 25, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Anulación 12
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5598' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 4 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5598');
-- Anulación 13
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9009' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9009');
-- Reserva 9
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9560', 'reserva', 34, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 12
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3837', 'compra', 6, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 10
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9115', 'reserva', 24, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 13
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4621', 'compra', 30, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 14
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9369', 'compra', 6, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 11
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9032', 'reserva', 10, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 12
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8805', 'reserva', 8, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 15
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4121', 'compra', 20, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 13
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9588', 'reserva', 4, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 16
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5815', 'compra', 30, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 14
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3852', 'reserva', 39, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Anulación 14
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1322' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1322');
-- Anulación 15
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9059' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9059');
-- Reserva 15
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8833', 'reserva', 33, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 16
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4690', 'reserva', 39, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 17
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3631', 'compra', 25, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 18
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5141', 'compra', 4, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Reserva 17
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4249', 'reserva', 26, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 18
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9461', 'reserva', 40, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 19
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6943', 'compra', 3, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Anulación 16
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1529' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1529');
-- Compra 20
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6623', 'compra', 39, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 21
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1594', 'compra', 12, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 22
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1236', 'compra', 1, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Reserva 19
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'reserva', 10, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 23
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7286', 'compra', 2, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 24
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6094', 'compra', 14, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 25
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7278', 'compra', 8, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Jubilado');
-- Anulación 17
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1822' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 38 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1822');
-- Reserva 20
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4592', 'reserva', 9, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 21
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7140', 'reserva', 5, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 18
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8806' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 11 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8806');
-- Compra 26
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8026', 'compra', 39, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Anulación 19
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8554' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 29 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8554');
-- Compra 27
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3452', 'compra', 26, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 22
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6948', 'reserva', 38, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 28
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6572', 'compra', 37, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Anulación 20
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5017' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 17 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5017');
-- Anulación 21
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2766' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2766');
-- Compra 29
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3649', 'compra', 15, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 30
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7014', 'compra', 16, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Anulación 22
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9265' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 9 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9265');
-- Compra 31
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6188', 'compra', 13, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Reserva 23
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4826', 'reserva', 7, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 24
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1503', 'reserva', 27, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 32
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2032', 'compra', 27, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 33
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3177', 'compra', 39, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Compra 34
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5677', 'compra', 38, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Anulación 23
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8805' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8805');
-- Reserva 25
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3337', 'reserva', 6, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Reserva 26
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8996', 'reserva', 26, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 27
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2490', 'reserva', 35, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Anulación 24
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2616' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 31 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2616');
-- Anulación 25
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8794' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 40 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8794');
-- Reserva 28
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6960', 'reserva', 10, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Anulación 26
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3844' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3844');
-- Anulación 27
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8622' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 26 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8622');
-- Compra 35
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8622', 'compra', 10, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Anulación 28
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4910' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4910');
-- Compra 36
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5645', 'compra', 26, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 29
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7489', 'reserva', 36, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 37
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7780', 'compra', 33, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Anulación 29
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1629' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 10 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1629');
-- Compra 38
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5531', 'compra', 34, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Anulación 30
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5954' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 4 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5954');
-- Anulación 31
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6607' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 31 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6607');
-- Compra 39
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9881', 'compra', 27, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Reserva 30
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1368', 'reserva', 31, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 40
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8825', 'compra', 9, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 41
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4213', 'compra', 3, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 42
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1355', 'compra', 11, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 43
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5572', 'compra', 31, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 44
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5338', 'compra', 9, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Anulación 32
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4908' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4908');
-- Compra 45
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5753', 'compra', 27, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 33
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6108' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6108');
-- Anulación 34
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8622' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 40 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8622');
-- Reserva 31
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6667', 'reserva', 28, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 46
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7733', 'compra', 6, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 32
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3357', 'reserva', 4, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 47
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1025', 'compra', 1, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 33
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2338', 'reserva', 29, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 35
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1532' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1532');
-- Compra 48
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3391', 'compra', 4, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Anulación 36
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3260' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 15 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3260');
-- Anulación 37
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1258' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1258');
-- Compra 49
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6865', 'compra', 30, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 34
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2730', 'reserva', 33, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 50
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8026', 'compra', 22, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Anulación 38
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1944' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1944');
-- Compra 51
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6185', 'compra', 32, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 52
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2722', 'compra', 26, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 53
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7840', 'compra', 11, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 54
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7243', 'compra', 27, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 35
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1923', 'reserva', 12, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Reserva 36
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4167', 'reserva', 6, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 37
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4059', 'reserva', 7, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Reserva 38
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7780', 'reserva', 16, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 55
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6337', 'compra', 31, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Anulación 39
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7038' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7038');
-- Compra 56
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5156', 'compra', 34, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 40
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2419' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2419');
-- Anulación 41
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1484' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 2 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1484');
-- Reserva 39
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3391', 'reserva', 18, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Anulación 42
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2849' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 13 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2849');
-- Reserva 40
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5403', 'reserva', 32, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 57
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1177', 'compra', 12, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Compra 58
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8525', 'compra', 34, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 59
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6948', 'compra', 36, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 60
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9185', 'compra', 7, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 61
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2735', 'compra', 33, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 62
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3837', 'compra', 9, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Jubilado');
-- Compra 63
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6680', 'compra', 21, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 64
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5189', 'compra', 26, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 65
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4433', 'compra', 4, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 66
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4032', 'compra', 3, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Anulación 43
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4354' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 2 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4354');
-- Reserva 41
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2018', 'reserva', 20, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 42
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1443', 'reserva', 40, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Compra 67
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8272', 'compra', 38, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 43
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7859', 'reserva', 36, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 68
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7300', 'compra', 8, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 69
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6146', 'compra', 12, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 70
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6458', 'compra', 24, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 71
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4690', 'compra', 39, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 72
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3438', 'compra', 6, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Reserva 44
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9539', 'reserva', 17, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Anulación 44
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5133' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 32 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5133');
-- Anulación 45
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5017' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 39 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5017');
-- Compra 73
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3716', 'compra', 2, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 74
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4092', 'compra', 15, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 45
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9881', 'reserva', 26, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Anulación 46
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6121' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6121');
-- Compra 75
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8802', 'compra', 37, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Anulación 47
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8510' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8510');
-- Anulación 48
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6644' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6644');
-- Compra 76
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8904', 'compra', 13, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Anulación 49
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7237' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7237');
-- Compra 77
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1975', 'compra', 34, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Compra 78
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4749', 'compra', 32, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 79
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6665', 'compra', 36, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Anulación 50
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2064' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2064');
-- Anulación 51
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9927' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9927');
-- Reserva 46
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9803', 'reserva', 15, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 80
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8514', 'compra', 7, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Compra 81
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6337', 'compra', 37, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 82
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8986', 'compra', 4, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 52
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9897' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9897');
-- Anulación 53
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1177' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 30 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1177');
-- Anulación 54
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5032' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5032');
-- Anulación 55
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5241' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 7 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5241');
-- Anulación 56
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7167' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 26 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7167');
-- Anulación 57
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1843' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 18 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1843');
-- Compra 83
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8462', 'compra', 14, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 84
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7733', 'compra', 29, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 85
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4239', 'compra', 40, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Anulación 58
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2262' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2262');
-- Reserva 47
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1347', 'reserva', 38, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 59
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2604' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2604');
-- Anulación 60
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5656' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5656');
-- Anulación 61
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9003' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 33 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9003');
-- Compra 86
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5931', 'compra', 19, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 62
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1486' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 24 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1486');
-- Anulación 63
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4207' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4207');
-- Compra 87
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7245', 'compra', 19, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Compra 88
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7846', 'compra', 1, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Compra 89
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7209', 'compra', 21, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Reserva 48
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1578', 'reserva', 18, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Anulación 64
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3022' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3022');
-- Anulación 65
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2530' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2530');
-- Reserva 49
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6734', 'reserva', 1, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 90
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2138', 'compra', 21, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Reserva 50
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3755', 'reserva', 18, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 91
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3174', 'compra', 19, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Anulación 66
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6263' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6263');
-- Compra 92
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2810', 'compra', 37, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Anulación 67
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1923' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 38 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1923');
-- Anulación 68
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7399' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 18 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7399');
-- Compra 93
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6862', 'compra', 26, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 94
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2972', 'compra', 14, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 69
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5766' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 10 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5766');
-- Compra 95
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4413', 'compra', 28, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Anulación 70
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6511' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 17 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6511');
-- Reserva 51
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4946', 'reserva', 9, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 52
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3626', 'reserva', 14, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Anulación 71
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3844' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3844');
-- Anulación 72
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5705' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5705');
-- Anulación 73
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4313' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4313');
-- Reserva 53
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5727', 'reserva', 31, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 96
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1484', 'compra', 8, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 74
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1347' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 9 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1347');
-- Anulación 75
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2160' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 20 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2160');
-- Compra 97
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3626', 'compra', 23, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Anulación 76
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5621' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5621');
-- Compra 98
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2394', 'compra', 16, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Reserva 54
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9869', 'reserva', 27, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 55
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8026', 'reserva', 22, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 99
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6639', 'compra', 27, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Anulación 77
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1780' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 40 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1780');
-- Anulación 78
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5653' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 10 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5653');
-- Compra 100
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8394', 'compra', 1, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 56
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7493', 'reserva', 1, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 101
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7859', 'compra', 37, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Reserva 57
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4286', 'reserva', 40, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 58
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8996', 'reserva', 15, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 59
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9694', 'reserva', 18, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 102
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8986', 'compra', 28, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Anulación 79
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1255' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1255');
-- Compra 103
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2329', 'compra', 17, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 104
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4781', 'compra', 31, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 105
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1690', 'compra', 29, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 60
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9818', 'reserva', 12, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Anulación 80
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6037' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6037');
-- Anulación 81
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7237' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 30 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7237');
-- Compra 106
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3073', 'compra', 13, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 107
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9927', 'compra', 10, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 61
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1415', 'reserva', 24, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Reserva 62
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1447', 'reserva', 35, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 108
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4197', 'compra', 40, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 82
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6107' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6107');
-- Anulación 83
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6207' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 7 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6207');
-- Reserva 63
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9786', 'reserva', 40, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 64
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3260', 'reserva', 32, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 109
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4287', 'compra', 3, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 65
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6039', 'reserva', 35, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 110
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1503', 'compra', 11, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Reserva 66
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8519', 'reserva', 34, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 111
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5894', 'compra', 28, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Compra 112
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4497', 'compra', 38, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 113
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9296', 'compra', 17, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 67
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1629', 'reserva', 10, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 68
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3073', 'reserva', 4, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 114
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2201', 'compra', 32, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Anulación 84
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6107' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6107');
-- Anulación 85
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9220' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 29 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9220');
-- Reserva 69
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5560', 'reserva', 33, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Reserva 70
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1594', 'reserva', 17, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Compra 115
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5531', 'compra', 19, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 71
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9297', 'reserva', 5, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Anulación 86
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7132' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 24 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7132');
-- Compra 116
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1355', 'compra', 34, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Anulación 87
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7976' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 29 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7976');
-- Compra 117
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3504', 'compra', 7, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Anulación 88
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2872' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2872');
-- Anulación 89
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4032' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4032');
-- Reserva 72
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2999', 'reserva', 8, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 118
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6185', 'compra', 3, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Anulación 90
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7466' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 11 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7466');
-- Anulación 91
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4591' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 20 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4591');
-- Compra 119
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6676', 'compra', 38, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 120
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1474', 'compra', 7, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 121
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4019', 'compra', 15, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Anulación 92
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6572' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6572');
-- Compra 122
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4041', 'compra', 19, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 73
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8951', 'reserva', 3, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 93
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7456' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 28 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7456');
-- Reserva 74
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3149', 'reserva', 3, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 123
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5045', 'compra', 7, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Anulación 94
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3912' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 2 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3912');
-- Reserva 75
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4732', 'reserva', 25, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 124
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7222', 'compra', 32, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Anulación 95
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8813' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 4 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8813');
-- Compra 125
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5815', 'compra', 31, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Anulación 96
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3482' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3482');
-- Anulación 97
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8014' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8014');
-- Compra 126
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5774', 'compra', 24, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 76
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1075', 'reserva', 17, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Anulación 98
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1443' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 19 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1443');
-- Anulación 99
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9560' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 20 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9560');
-- Compra 127
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8951', 'compra', 34, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 128
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4354', 'compra', 9, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Anulación 100
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9097' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 30 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9097');
-- Compra 129
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8470', 'compra', 20, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Reserva 77
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2585', 'reserva', 28, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Anulación 101
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4891' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4891');
-- Reserva 78
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6563', 'reserva', 28, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 130
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9071', 'compra', 28, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 131
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9403', 'compra', 26, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 79
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2891', 'reserva', 19, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 80
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7296', 'reserva', 28, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 132
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6718', 'compra', 4, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 133
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8871', 'compra', 10, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Compra 134
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2521', 'compra', 25, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 81
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2412', 'reserva', 29, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 82
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6061', 'reserva', 12, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Anulación 102
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2338' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2338');
-- Compra 135
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1213', 'compra', 5, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 136
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7663', 'compra', 35, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 137
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8170', 'compra', 21, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 138
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9818', 'compra', 20, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 139
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8986', 'compra', 12, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Reserva 83
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7014', 'reserva', 18, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 84
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2180', 'reserva', 25, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 140
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5261', 'compra', 30, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Anulación 103
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6207' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 2 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6207');
-- Compra 141
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1213', 'compra', 13, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 85
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2872', 'reserva', 35, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 142
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'compra', 18, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 143
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3631', 'compra', 13, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 86
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3852', 'reserva', 28, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 87
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1923', 'reserva', 18, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 144
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4415', 'compra', 5, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 145
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1420', 'compra', 19, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 88
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5559', 'reserva', 37, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 146
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1347', 'compra', 29, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 147
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2739', 'compra', 30, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Anulación 104
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7935' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 40 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7935');
-- Compra 148
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3844', 'compra', 14, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 149
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6263', 'compra', 15, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Anulación 105
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7663' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7663');
-- Reserva 89
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6511', 'reserva', 9, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Anulación 106
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7777' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7777');
-- Anulación 107
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4849' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4849');
-- Compra 150
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2018', 'compra', 29, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 90
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1570', 'reserva', 37, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 91
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3749', 'reserva', 31, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 151
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1020', 'compra', 7, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 152
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5991', 'compra', 6, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 153
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2999', 'compra', 36, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Anulación 108
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3391' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3391');
-- Compra 154
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1623', 'compra', 25, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 155
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1188', 'compra', 12, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 92
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2267', 'reserva', 39, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 156
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5024', 'compra', 33, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Reserva 93
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6909', 'reserva', 33, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 94
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8063', 'reserva', 1, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 95
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2490', 'reserva', 9, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 157
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8977', 'compra', 16, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 158
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5656', 'compra', 34, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 96
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2092', 'reserva', 10, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 109
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6865' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6865');
-- Anulación 110
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7449' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 20 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7449');
-- Anulación 111
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6922' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6922');
-- Reserva 97
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2954', 'reserva', 35, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Reserva 98
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9071', 'reserva', 15, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 159
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3357', 'compra', 33, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 160
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8310', 'compra', 10, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Anulación 112
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2392' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2392');
-- Reserva 99
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2118', 'reserva', 30, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Anulación 113
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5803' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5803');
-- Anulación 114
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5227' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5227');
-- Reserva 100
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3904', 'reserva', 6, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 161
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4661', 'compra', 14, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 101
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9315', 'reserva', 18, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 162
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6108', 'compra', 31, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Compra 163
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1542', 'compra', 4, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 164
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6693', 'compra', 7, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Anulación 115
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6107' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6107');
-- Anulación 116
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8047' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8047');
-- Anulación 117
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7194' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7194');
-- Reserva 102
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5554', 'reserva', 18, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Anulación 118
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1352' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1352');
-- Compra 165
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7407', 'compra', 7, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 119
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8805' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 19 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8805');
-- Reserva 103
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3097', 'reserva', 9, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 166
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4072', 'compra', 26, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Reserva 104
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9297', 'reserva', 24, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 167
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4986', 'compra', 31, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 168
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7278', 'compra', 35, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 105
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8660', 'reserva', 40, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 169
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8433', 'compra', 27, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Reserva 106
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4464', 'reserva', 24, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Anulación 120
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6769' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 28 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6769');
-- Anulación 121
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8926' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8926');
-- Reserva 107
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4381', 'reserva', 27, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 170
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1022', 'compra', 32, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Reserva 108
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3720', 'reserva', 29, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 171
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8924', 'compra', 36, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Reserva 109
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9973', 'reserva', 21, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Reserva 110
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6647', 'reserva', 33, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 172
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1822', 'compra', 15, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 111
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6464', 'reserva', 19, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 112
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9329', 'reserva', 17, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 113
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5680', 'reserva', 7, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 114
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2616', 'reserva', 9, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 115
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6668', 'reserva', 9, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 116
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5598', 'reserva', 14, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Anulación 122
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8980' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 31 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8980');
-- Anulación 123
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9858' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9858');
-- Anulación 124
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8077' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8077');
-- Reserva 117
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2872', 'reserva', 8, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Compra 173
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2031', 'compra', 5, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 174
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2656', 'compra', 34, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Reserva 118
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9033', 'reserva', 11, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Anulación 125
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6304' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6304');
-- Reserva 119
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2394', 'reserva', 16, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 175
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5132', 'compra', 8, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Anulación 126
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5554' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 3 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5554');
-- Anulación 127
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3967' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 37 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3967');
-- Compra 176
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1368', 'compra', 2, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 120
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8788', 'reserva', 10, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Reserva 121
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8147', 'reserva', 25, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 177
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1477', 'compra', 36, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Reserva 122
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9248', 'reserva', 29, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 178
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9372', 'compra', 13, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 179
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2288', 'compra', 11, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 180
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4169', 'compra', 20, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 128
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8284' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8284');
-- Reserva 123
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4732', 'reserva', 40, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 181
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5348', 'compra', 10, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 182
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7449', 'compra', 39, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 183
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7286', 'compra', 29, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 124
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9949', 'reserva', 1, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Bebe');
-- Compra 184
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2891', 'compra', 13, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 125
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4520', 'reserva', 32, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 185
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4169', 'compra', 3, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 186
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'compra', 21, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 126
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4854', 'reserva', 17, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Anulación 129
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4357' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4357');
-- Anulación 130
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7793' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7793');
-- Anulación 131
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3254' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 6 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3254');
-- Compra 187
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2192', 'compra', 19, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Compra 188
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7894', 'compra', 26, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Anulación 132
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5936' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 9 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5936');
-- Reserva 127
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4227', 'reserva', 35, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Anulación 133
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3852' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3852');
-- Compra 189
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9717', 'compra', 5, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Anulación 134
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4860' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 11 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4860');
-- Compra 190
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2435', 'compra', 1, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 128
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2007', 'reserva', 24, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Anulación 135
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5017' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5017');
-- Compra 191
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4227', 'compra', 34, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 192
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9115', 'compra', 22, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 193
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5060', 'compra', 25, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 194
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5118', 'compra', 11, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 195
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5983', 'compra', 1, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Reserva 129
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6333', 'reserva', 22, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Anulación 136
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2954' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 26 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2954');
-- Anulación 137
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1529' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1529');
-- Reserva 130
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7466', 'reserva', 16, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 196
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4437', 'compra', 25, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 197
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3989', 'compra', 27, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 131
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1975', 'reserva', 4, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Compra 198
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1337', 'compra', 11, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Anulación 138
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6185' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 3 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6185');
-- Reserva 132
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9180', 'reserva', 4, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Anulación 139
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9059' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 24 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9059');
-- Anulación 140
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9907' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9907');
-- Reserva 133
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4690', 'reserva', 40, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 199
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9397', 'compra', 8, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 200
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6672', 'compra', 2, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 201
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1435', 'compra', 11, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 134
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2733', 'reserva', 19, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 141
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9175' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9175');
-- Compra 202
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4207', 'compra', 24, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 142
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5477' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5477');
-- Anulación 143
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9085' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 37 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9085');
-- Compra 203
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9082', 'compra', 32, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 204
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1109', 'compra', 15, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 205
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4227', 'compra', 14, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Anulación 144
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2412' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 33 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2412');
-- Reserva 135
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9858', 'reserva', 38, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 136
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1477', 'reserva', 33, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Reserva 137
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4592', 'reserva', 15, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 206
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5323', 'compra', 13, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 207
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6221', 'compra', 40, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 208
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1560', 'compra', 26, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 209
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5598', 'compra', 8, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Anulación 145
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8935' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8935');
-- Anulación 146
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9048' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9048');
-- Compra 210
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9660', 'compra', 20, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Anulación 147
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9730' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 7 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9730');
-- Compra 211
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2763', 'compra', 23, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Reserva 138
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4207', 'reserva', 6, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 148
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7123' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 32 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7123');
-- Anulación 149
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7982' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7982');
-- Compra 212
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'compra', 2, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 213
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4239', 'compra', 31, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 139
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9598', 'reserva', 32, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 140
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9459', 'reserva', 31, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 150
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3077' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3077');
-- Reserva 141
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5258', 'reserva', 20, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 142
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5568', 'reserva', 20, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Anulación 151
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4867' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4867');
-- Anulación 152
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8615' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 38 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8615');
-- Anulación 153
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7373' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 3 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7373');
-- Anulación 154
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3472' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 28 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3472');
-- Anulación 155
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9803' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 4 
AND ubicacion = 22 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9803');
-- Anulación 156
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4891' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 33 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4891');
-- Anulación 157
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3348' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3348');
-- Anulación 158
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6645' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6645');
-- Anulación 159
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8007' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 33 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8007');
-- Anulación 160
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8483' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 3 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8483');
-- Anulación 161
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3299' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 13 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3299');
-- Compra 214
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4803', 'compra', 32, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 215
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4304', 'compra', 9, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 143
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3904', 'reserva', 12, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 216
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5038', 'compra', 9, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 144
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1236', 'reserva', 7, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 217
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6948', 'compra', 22, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Anulación 162
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3805' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 24 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3805');
-- Compra 218
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9601', 'compra', 39, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Anulación 163
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3027' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 3 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3027');
-- Anulación 164
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1822' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 4 
AND ubicacion = 11 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1822');
-- Compra 219
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4302', 'compra', 4, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Anulación 165
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9032' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9032');
-- Reserva 145
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2604', 'reserva', 13, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 220
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1796', 'compra', 18, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 221
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6502', 'compra', 15, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Anulación 166
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1177' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 39 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1177');
-- Reserva 146
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2201', 'reserva', 38, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Anulación 167
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6115' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 5 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6115');
-- Compra 222
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6922', 'compra', 11, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Reserva 147
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4030', 'reserva', 29, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Anulación 168
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4523' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 35 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4523');
-- Reserva 148
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1529', 'reserva', 17, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 223
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2386', 'compra', 22, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 149
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4785', 'reserva', 21, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 224
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3571', 'compra', 21, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 225
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1549', 'compra', 1, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 226
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5782', 'compra', 5, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 169
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1690' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 15 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1690');
-- Anulación 170
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7654' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 4 
AND ubicacion = 28 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7654');
-- Reserva 150
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9739', 'reserva', 4, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 227
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9294', 'compra', 39, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Anulación 171
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3672' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3672');
-- Anulación 172
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9159' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9159');
-- Anulación 173
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6507' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 17 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6507');
-- Anulación 174
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7785' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7785');
-- Reserva 151
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5232', 'reserva', 18, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 152
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6100', 'reserva', 39, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Compra 228
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4214', 'compra', 14, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Anulación 175
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3769' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 9 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3769');
-- Compra 229
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3769', 'compra', 23, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Compra 230
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2224', 'compra', 18, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 231
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2224', 'compra', 32, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 232
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8977', 'compra', 8, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 233
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9318', 'compra', 9, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Anulación 176
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5313' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5313');
-- Anulación 177
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1690' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 4 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1690');
-- Anulación 178
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3003' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 37 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3003');
-- Anulación 179
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8350' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 26 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8350');
-- Compra 234
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9085', 'compra', 13, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 153
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6518', 'reserva', 39, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 235
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4892', 'compra', 37, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Anulación 180
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4621' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4621');
-- Anulación 181
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_1316' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Arena Deportiva' 
AND espectaculo_id = 1 
AND ubicacion = 30 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_1316');
-- Compra 236
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5811', 'compra', 39, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 237
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3966', 'compra', 40, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 238
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2027', 'compra', 21, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Anulación 182
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3156' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 4 
AND ubicacion = 23 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3156');
-- Compra 239
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3832', 'compra', 20, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 240
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5156', 'compra', 33, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 154
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1690', 'reserva', 26, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 241
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8539', 'compra', 32, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 242
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3391', 'compra', 20, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Reserva 155
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9009', 'reserva', 26, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 243
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1352', 'compra', 35, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 244
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2252', 'compra', 38, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 245
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9318', 'compra', 19, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Reserva 156
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4894', 'reserva', 24, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 246
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8304', 'compra', 23, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 247
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4523', 'compra', 37, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Compra 248
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6931', 'compra', 7, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 249
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8924', 'compra', 3, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 250
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2394', 'compra', 3, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Reserva 157
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2146', 'reserva', 26, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 251
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4183', 'compra', 40, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 252
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6333', 'compra', 14, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 158
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5038', 'reserva', 18, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Anulación 183
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5531' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 21 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5531');
-- Compra 253
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6094', 'compra', 5, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 254
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1659', 'compra', 31, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 255
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9901', 'compra', 23, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Anulación 184
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8462' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 8 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8462');
-- Compra 256
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5731', 'compra', 13, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Reserva 159
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5696', 'reserva', 39, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 257
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8794', 'compra', 26, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 258
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7641', 'compra', 18, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Jubilado');
-- Anulación 185
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6483' 
AND fecha = '2024-06-20 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 1 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6483');
-- Reserva 160
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7403', 'reserva', 21, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 259
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7441', 'compra', 14, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 260
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5728', 'compra', 30, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Anulación 186
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3568' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 25 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3568');
-- Anulación 187
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_2700' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 5 
AND ubicacion = 36 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_2700');
-- Compra 261
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3341', 'compra', 9, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Compra 262
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7654', 'compra', 14, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 161
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3504', 'reserva', 14, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 162
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8477', 'reserva', 11, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 188
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8604' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 37 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8604');
-- Anulación 189
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_3895' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 28 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_3895');
-- Compra 263
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3967', 'compra', 13, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 163
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3216', 'reserva', 23, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Reserva 164
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6344', 'reserva', 24, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Anulación 190
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_9355' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 37 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_9355');
-- Reserva 165
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6665', 'reserva', 30, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Anulación 191
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4197' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 16 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4197');
-- Anulación 192
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6692' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Palacio de Congresos' 
AND espectaculo_id = 2 
AND ubicacion = 27 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6692');
-- Anulación 193
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6645' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 31 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6645');
-- Anulación 194
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_6843' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 18 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_6843');
-- Compra 264
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7928', 'compra', 28, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 166
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1739', 'reserva', 3, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 265
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1188', 'compra', 10, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 266
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8980', 'compra', 10, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Anulación 195
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_7509' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Auditorio Municipal' 
AND espectaculo_id = 2 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_7509');
-- Anulación 196
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5060' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 33 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5060');
-- Compra 267
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7921', 'compra', 10, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Compra 268
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1519', 'compra', 20, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 269
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2118', 'compra', 21, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Compra 270
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2411', 'compra', 24, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Anulación 197
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_5671' 
AND fecha = '2024-06-01 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 5 
AND ubicacion = 34 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_5671');
-- Reserva 167
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1505', 'reserva', 28, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 271
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7456', 'compra', 15, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 272
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5160', 'compra', 40, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Compra 273
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4817', 'compra', 22, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Anulación 198
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8802' 
AND fecha = '2024-06-15 00:00:00' 
AND recinto_id = 'Teatro Municipal' 
AND espectaculo_id = 3 
AND ubicacion = 12 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8802');
-- Compra 274
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4875', 'compra', 33, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Anulación 199
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_8304' 
AND fecha = '2024-06-10 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 1 
AND ubicacion = 14 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_8304');
-- Reserva 168
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6862', 'reserva', 27, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Compra 275
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4610', 'compra', 21, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 276
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9159', 'compra', 38, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Anulación 200
SELECT id_transaccion INTO @transaccion_id 
FROM Transaccion 
WHERE datos_bancarios = 'BENCH_4521' 
AND fecha = '2024-06-05 00:00:00' 
AND recinto_id = 'Estadio Principal' 
AND espectaculo_id = 5 
AND ubicacion = 20 
AND estado = 'reserva'
LIMIT 1;

CALL cancelar_reserva(@transaccion_id, 'BENCH_4521');
-- Reserva 169
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2604', 'reserva', 35, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 277
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9816', 'compra', 36, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 170
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6769', 'reserva', 19, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Reserva 171
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'reserva', 14, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 278
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9901', 'compra', 22, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 279
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9539', 'compra', 38, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 280
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4860', 'compra', 21, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 281
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2810', 'compra', 30, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 282
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5983', 'compra', 10, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 283
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1496', 'compra', 17, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 284
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9266', 'compra', 2, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 285
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4232', 'compra', 37, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 286
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8539', 'compra', 6, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 172
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4892', 'reserva', 11, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 173
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9075', 'reserva', 2, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 174
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1281', 'reserva', 24, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Compra 287
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4857', 'compra', 35, '2024-06-01 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 288
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3672', 'compra', 19, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 289
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8788', 'compra', 16, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Reserva 175
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5133', 'reserva', 22, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Compra 290
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5991', 'compra', 36, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 291
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9858', 'compra', 31, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Compra 292
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8833', 'compra', 12, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 293
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7051', 'compra', 3, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 294
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9536', 'compra', 35, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 295
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6889', 'compra', 28, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 296
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4947', 'compra', 26, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 297
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4520', 'compra', 11, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 298
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5174', 'compra', 15, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 299
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2200', 'compra', 24, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 300
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9075', 'compra', 38, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 176
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2048', 'reserva', 23, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 301
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5531', 'compra', 28, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 302
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7382', 'compra', 27, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 303
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8732', 'compra', 40, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 304
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3348', 'compra', 1, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 305
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4826', 'compra', 7, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 306
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4431', 'compra', 25, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 307
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3588', 'compra', 38, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Compra 308
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6665', 'compra', 8, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 309
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7177', 'compra', 32, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 310
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4286', 'compra', 37, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Reserva 177
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7296', 'reserva', 28, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 178
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7038', 'reserva', 34, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Compra 311
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4564', 'compra', 23, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 179
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3149', 'reserva', 24, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 312
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2252', 'compra', 3, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 313
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5753', 'compra', 5, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Compra 314
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8310', 'compra', 4, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 315
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3348', 'compra', 31, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 316
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2048', 'compra', 16, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 180
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3832', 'reserva', 30, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 317
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9543', 'compra', 40, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Reserva 181
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1871', 'reserva', 8, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 318
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8168', 'compra', 38, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 319
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2722', 'compra', 15, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Reserva 182
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3672', 'reserva', 37, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 183
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3077', 'reserva', 33, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Reserva 184
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6627', 'reserva', 9, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Reserva 185
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2017', 'reserva', 31, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Reserva 186
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3895', 'reserva', 38, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 320
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9774', 'compra', 34, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 321
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6700', 'compra', 34, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 322
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5754', 'compra', 29, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Compra 323
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8525', 'compra', 21, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 324
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8519', 'compra', 2, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 187
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8284', 'reserva', 6, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Compra 325
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6535', 'compra', 5, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 188
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2872', 'reserva', 25, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Reserva 189
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8902', 'reserva', 13, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 190
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3452', 'reserva', 7, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 191
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7654', 'reserva', 23, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 326
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1373', 'compra', 13, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Reserva 192
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9071', 'reserva', 12, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 193
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2545', 'reserva', 12, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 327
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2730', 'compra', 1, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 194
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2560', 'reserva', 12, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 328
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3077', 'compra', 17, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Reserva 195
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5241', 'reserva', 2, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 329
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5862', 'compra', 5, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 330
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3656', 'compra', 26, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 331
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2185', 'compra', 31, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 332
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3315', 'compra', 24, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 333
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6645', 'compra', 2, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Compra 334
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9927', 'compra', 30, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 196
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2133', 'reserva', 22, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 197
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6562', 'reserva', 3, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Reserva 198
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2262', 'reserva', 10, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 335
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4352', 'compra', 5, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 336
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9389', 'compra', 13, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 337
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9560', 'compra', 10, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Reserva 199
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5060', 'reserva', 17, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Reserva 200
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5983', 'reserva', 16, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 201
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7140', 'reserva', 21, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Compra 338
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6672', 'compra', 23, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Compra 339
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3656', 'compra', 10, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 202
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5656', 'reserva', 15, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Parado');
-- Compra 340
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6693', 'compra', 22, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Reserva 203
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5367', 'reserva', 23, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 341
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4041', 'compra', 2, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 342
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1125', 'compra', 20, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 204
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3869', 'reserva', 2, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 205
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4304', 'reserva', 20, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Reserva 206
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9115', 'reserva', 4, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 343
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2007', 'compra', 29, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Reserva 207
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9739', 'reserva', 24, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 344
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6627', 'compra', 2, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Bebe');
-- Reserva 208
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8233', 'reserva', 17, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 209
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4920', 'reserva', 13, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Compra 345
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1886', 'compra', 22, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 346
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2106', 'compra', 29, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 347
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7167', 'compra', 38, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 210
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2324', 'reserva', 26, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 348
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6929', 'compra', 25, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 211
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8026', 'reserva', 12, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 349
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6115', 'compra', 25, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Compra 350
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4313', 'compra', 16, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 212
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7407', 'reserva', 12, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 351
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6862', 'compra', 8, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 213
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6639', 'reserva', 27, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Parado');
-- Reserva 214
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1598', 'reserva', 29, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 352
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5017', 'compra', 19, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 215
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2892', 'reserva', 36, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 353
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6022', 'compra', 39, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 354
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5313', 'compra', 3, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 216
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9739', 'reserva', 35, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 217
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6115', 'reserva', 5, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 355
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7407', 'compra', 27, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Reserva 218
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8304', 'reserva', 40, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 219
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1283', 'reserva', 15, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 356
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6645', 'compra', 36, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 357
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3966', 'compra', 5, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Reserva 220
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6889', 'reserva', 30, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 358
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5879', 'compra', 39, '2024-06-15 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Reserva 221
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9075', 'reserva', 20, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 222
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4169', 'reserva', 29, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 359
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9747', 'compra', 33, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Compra 360
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6458', 'compra', 37, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 361
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3967', 'compra', 11, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 362
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8430', 'compra', 11, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Compra 363
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9539', 'compra', 36, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 364
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7678', 'compra', 8, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 223
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3378', 'reserva', 9, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 365
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4725', 'compra', 11, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 224
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7895', 'reserva', 7, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Infantil');
-- Compra 366
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9915', 'compra', 29, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Compra 367
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4078', 'compra', 17, '2024-06-20 00:00:00', 'Teatro Municipal', 2, 'Jubilado');
-- Compra 368
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6693', 'compra', 8, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Bebe');
-- Reserva 225
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4276', 'reserva', 15, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 226
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9175', 'reserva', 29, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 369
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3177', 'compra', 34, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 370
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7658', 'compra', 38, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 227
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2584', 'reserva', 30, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 371
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8331', 'compra', 15, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 372
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5509', 'compra', 36, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 228
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9670', 'reserva', 9, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 373
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2017', 'compra', 2, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Reserva 229
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8737', 'reserva', 31, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Compra 374
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9048', 'compra', 34, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Adulto');
-- Compra 375
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1739', 'compra', 23, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 230
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5677', 'reserva', 12, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Jubilado');
-- Reserva 231
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2392', 'reserva', 30, '2024-06-20 00:00:00', 'Auditorio Municipal', 3, 'Adulto');
-- Compra 376
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4139', 'compra', 32, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 232
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4464', 'reserva', 18, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Compra 377
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5132', 'compra', 25, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 378
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6485', 'compra', 21, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 379
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5878', 'compra', 7, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Compra 380
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9539', 'compra', 11, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Compra 381
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9177', 'compra', 37, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Compra 382
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7014', 'compra', 16, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 233
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5983', 'reserva', 6, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Reserva 234
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6572', 'reserva', 4, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Jubilado');
-- Compra 383
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2376', 'compra', 7, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 384
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2545', 'compra', 35, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 235
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7982', 'reserva', 16, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 385
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2893', 'compra', 22, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 236
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4167', 'reserva', 13, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 386
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9539', 'compra', 25, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 387
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8525', 'compra', 17, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 237
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6137', 'reserva', 27, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 238
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9163', 'reserva', 39, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 388
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4232', 'compra', 14, '2024-06-15 00:00:00', 'Estadio Principal', 4, 'Infantil');
-- Reserva 239
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5174', 'reserva', 8, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 240
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8310', 'reserva', 13, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 389
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3720', 'compra', 18, '2024-06-05 00:00:00', 'Teatro Municipal', 3, 'Adulto');
-- Compra 390
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3967', 'compra', 39, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 391
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2586', 'compra', 4, '2024-06-10 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 392
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4592', 'compra', 7, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Reserva 241
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3837', 'reserva', 27, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Reserva 242
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3280', 'reserva', 16, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Compra 393
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7678', 'compra', 5, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 394
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5141', 'compra', 14, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Adulto');
-- Reserva 243
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6888', 'reserva', 9, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 395
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7207', 'compra', 32, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Reserva 244
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7382', 'reserva', 21, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Compra 396
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2766', 'compra', 2, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 245
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9661', 'reserva', 1, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 397
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2625', 'compra', 16, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 246
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8748', 'reserva', 40, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 247
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5645', 'reserva', 30, '2024-06-05 00:00:00', 'Estadio Principal', 5, 'Infantil');
-- Compra 398
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5825', 'compra', 5, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 399
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3015', 'compra', 30, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 400
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2521', 'compra', 10, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 401
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6148', 'compra', 31, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 248
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8904', 'reserva', 33, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 249
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5261', 'reserva', 35, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 402
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9818', 'compra', 39, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 403
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9184', 'compra', 9, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 404
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5187', 'compra', 7, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 405
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2339', 'compra', 25, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 406
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5160', 'compra', 33, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 407
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2329', 'compra', 23, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 250
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2597', 'reserva', 28, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 251
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6639', 'reserva', 17, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 252
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8986', 'reserva', 36, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Adulto');
-- Reserva 253
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8310', 'reserva', 22, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Reserva 254
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9869', 'reserva', 18, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 408
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7762', 'compra', 32, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Jubilado');
-- Reserva 255
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4194', 'reserva', 6, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 409
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4437', 'compra', 26, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Reserva 256
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9901', 'reserva', 38, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Parado');
-- Reserva 257
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8477', 'reserva', 36, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Adulto');
-- Compra 410
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8806', 'compra', 30, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 411
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1447', 'compra', 7, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 258
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7945', 'reserva', 3, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 259
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3015', 'reserva', 16, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 260
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8924', 'reserva', 2, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 412
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9980', 'compra', 34, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Compra 413
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4593', 'compra', 27, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Infantil');
-- Compra 414
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1447', 'compra', 36, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 415
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8081', 'compra', 37, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 416
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2411', 'compra', 38, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Compra 417
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1213', 'compra', 30, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 418
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3801', 'compra', 6, '2024-06-05 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 419
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5803', 'compra', 19, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Reserva 261
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2766', 'reserva', 1, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 262
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6627', 'reserva', 11, '2024-06-05 00:00:00', 'Auditorio Municipal', 4, 'Bebe');
-- Compra 420
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4785', 'compra', 20, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Adulto');
-- Compra 421
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5727', 'compra', 10, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 422
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7778', 'compra', 33, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 423
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4304', 'compra', 15, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 263
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8350', 'reserva', 33, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 424
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6983', 'compra', 13, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Compra 425
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3015', 'compra', 20, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 426
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6597', 'compra', 11, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Reserva 264
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2755', 'reserva', 17, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 427
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4783', 'compra', 32, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 428
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4092', 'compra', 28, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 429
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1792', 'compra', 29, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 265
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9266', 'reserva', 10, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 266
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6073', 'reserva', 18, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 430
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5804', 'compra', 33, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 431
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1598', 'compra', 32, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Reserva 267
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4354', 'reserva', 14, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 432
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7698', 'compra', 35, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 268
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4213', 'reserva', 29, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 433
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6888', 'compra', 6, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 434
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4521', 'compra', 2, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 269
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4718', 'reserva', 15, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Compra 435
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2577', 'compra', 21, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Reserva 270
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1281', 'reserva', 24, '2024-06-15 00:00:00', 'Arena Deportiva', 1, 'Bebe');
-- Compra 436
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7894', 'compra', 16, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 437
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4895', 'compra', 30, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 271
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1322', 'reserva', 1, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 438
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2804', 'compra', 39, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 439
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1022', 'compra', 17, '2024-06-01 00:00:00', 'Teatro Municipal', 5, 'Infantil');
-- Compra 440
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8805', 'compra', 15, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 441
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5879', 'compra', 20, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 272
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2192', 'reserva', 9, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Reserva 273
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6889', 'reserva', 17, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 442
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1629', 'compra', 1, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 443
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4491', 'compra', 13, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Infantil');
-- Reserva 274
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7399', 'reserva', 40, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 444
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6623', 'compra', 16, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 275
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5728', 'reserva', 7, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 276
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4242', 'reserva', 17, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Adulto');
-- Compra 445
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1542', 'compra', 18, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 446
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6008', 'compra', 24, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 277
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1601', 'reserva', 26, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 447
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5279', 'compra', 23, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 278
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9163', 'reserva', 34, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 448
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6414', 'compra', 27, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 449
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3003', 'compra', 36, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Jubilado');
-- Reserva 279
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3971', 'reserva', 31, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 450
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2872', 'compra', 39, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Adulto');
-- Reserva 280
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8796', 'reserva', 19, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 451
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7456', 'compra', 4, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 452
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5463', 'compra', 32, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 281
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5840', 'reserva', 27, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 282
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3006', 'reserva', 36, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 453
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6073', 'compra', 19, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Reserva 283
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1913', 'reserva', 35, '2024-06-01 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Reserva 284
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7382', 'reserva', 5, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 454
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9159', 'compra', 28, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 455
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2185', 'compra', 11, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 456
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8772', 'compra', 29, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 285
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7945', 'reserva', 3, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Bebe');
-- Compra 457
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9547', 'compra', 3, '2024-06-01 00:00:00', 'Palacio de Congresos', 4, 'Bebe');
-- Reserva 286
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7407', 'reserva', 25, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Adulto');
-- Compra 458
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5118', 'compra', 29, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Reserva 287
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5326', 'reserva', 37, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 459
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9075', 'compra', 28, '2024-06-15 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 288
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8488', 'reserva', 8, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 460
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1611', 'compra', 30, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 289
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7265', 'reserva', 34, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Adulto');
-- Compra 461
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5650', 'compra', 32, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 462
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9446', 'compra', 16, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 290
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4621', 'reserva', 19, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Compra 463
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8665', 'compra', 20, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Reserva 291
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4038', 'reserva', 3, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Reserva 292
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2628', 'reserva', 11, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 464
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1213', 'compra', 19, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Reserva 293
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8457', 'reserva', 12, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Reserva 294
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2702', 'reserva', 16, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 465
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9009', 'compra', 3, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 295
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3434', 'reserva', 20, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 466
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8488', 'compra', 8, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 467
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5227', 'compra', 3, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Reserva 296
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9265', 'reserva', 13, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 468
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9009', 'compra', 37, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 469
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9588', 'compra', 24, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 470
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9219', 'compra', 14, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 471
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3971', 'compra', 18, '2024-06-10 00:00:00', 'Arena Deportiva', 3, 'Parado');
-- Compra 472
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5733', 'compra', 12, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 473
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8919', 'compra', 37, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 297
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7243', 'reserva', 8, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Bebe');
-- Reserva 298
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5313', 'reserva', 22, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Infantil');
-- Compra 474
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4875', 'compra', 15, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 475
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4875', 'compra', 19, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 476
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8622', 'compra', 21, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Adulto');
-- Compra 477
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7658', 'compra', 13, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Jubilado');
-- Compra 478
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7278', 'compra', 17, '2024-06-10 00:00:00', 'Teatro Municipal', 4, 'Infantil');
-- Compra 479
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_8919', 'compra', 40, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Compra 480
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_1720', 'compra', 19, '2024-06-20 00:00:00', 'Estadio Principal', 1, 'Parado');
-- Compra 481
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3434', 'compra', 33, '2024-06-20 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Reserva 299
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6682', 'reserva', 18, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Reserva 300
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5470', 'reserva', 28, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Jubilado');
-- Reserva 301
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3288', 'reserva', 31, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 482
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4639', 'compra', 17, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 483
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5840', 'compra', 2, '2024-06-10 00:00:00', 'Estadio Principal', 1, 'Bebe');
-- Compra 484
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4774', 'compra', 30, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 302
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3197', 'reserva', 37, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 485
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7403', 'compra', 35, '2024-06-05 00:00:00', 'Palacio de Congresos', 2, 'Infantil');
-- Compra 486
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9783', 'compra', 24, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 487
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_3755', 'compra', 6, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Compra 488
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_4661', 'compra', 15, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 489
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9670', 'compra', 2, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 490
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2545', 'compra', 5, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Adulto');
-- Compra 491
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5133', 'compra', 4, '2024-06-01 00:00:00', 'Auditorio Municipal', 2, 'Jubilado');
-- Compra 492
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6344', 'compra', 6, '2024-06-10 00:00:00', 'Auditorio Municipal', 5, 'Infantil');
-- Reserva 303
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_9446', 'reserva', 38, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Jubilado');
-- Reserva 304
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6121', 'reserva', 32, '2024-06-20 00:00:00', 'Arena Deportiva', 4, 'Infantil');
-- Compra 493
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_7931', 'compra', 29, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Infantil');
-- Compra 494
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_5696', 'compra', 28, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Compra 495
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_2670', 'compra', 11, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');
-- Reserva 305
INSERT INTO Transaccion 
        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
        VALUES ('BENCH_6458', 'reserva', 38, '2024-06-15 00:00:00', 'Palacio de Congresos', 5, 'Adulto');

-- Consultas (0)

COMMIT;
SELECT TIMEDIFF(NOW(), @start_time) as tiempo_ejecucion;
