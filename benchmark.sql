SET autocommit=0;
START TRANSACTION;

-- Variables para reutilización
SET @start_time = NOW();

-- Compras (1000)
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6616', 'compra', 596, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9914', 'compra', 187, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7541', 'compra', 668, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9454', 'compra', 522, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8637', 'compra', 432, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7675', 'compra', 311, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2475', 'compra', 984, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9349', 'compra', 547, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8738', 'compra', 282, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2839', 'compra', 146, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9097', 'compra', 209, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9681', 'compra', 669, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5118', 'compra', 514, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9096', 'compra', 89, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6082', 'compra', 55, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7622', 'compra', 520, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6652', 'compra', 540, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8001', 'compra', 767, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5016', 'compra', 633, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7559', 'compra', 6, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2953', 'compra', 366, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9454', 'compra', 212, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2338', 'compra', 563, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9209', 'compra', 432, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6650', 'compra', 450, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2475', 'compra', 183, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5868', 'compra', 42, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2884', 'compra', 251, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6936', 'compra', 114, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3061', 'compra', 771, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9366', 'compra', 547, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1363', 'compra', 984, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9245', 'compra', 989, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6310', 'compra', 839, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8856', 'compra', 223, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5960', 'compra', 949, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7459', 'compra', 395, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8312', 'compra', 384, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3151', 'compra', 667, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2618', 'compra', 849, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8897', 'compra', 878, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7167', 'compra', 381, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4384', 'compra', 311, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5343', 'compra', 241, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4049', 'compra', 932, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8011', 'compra', 621, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1736', 'compra', 875, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2839', 'compra', 279, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1238', 'compra', 580, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7498', 'compra', 629, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7629', 'compra', 948, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2512', 'compra', 935, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'compra', 660, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3071', 'compra', 326, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2091', 'compra', 489, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9783', 'compra', 274, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7833', 'compra', 374, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7864', 'compra', 216, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3765', 'compra', 21, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1238', 'compra', 359, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9106', 'compra', 580, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3162', 'compra', 862, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3642', 'compra', 650, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8209', 'compra', 219, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8609', 'compra', 355, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1075', 'compra', 860, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4091', 'compra', 781, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6154', 'compra', 158, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2034', 'compra', 508, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9779', 'compra', 630, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2214', 'compra', 555, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1149', 'compra', 365, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1094', 'compra', 831, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4747', 'compra', 659, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3821', 'compra', 900, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3231', 'compra', 925, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1157', 'compra', 281, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6547', 'compra', 193, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1233', 'compra', 83, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6882', 'compra', 679, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4807', 'compra', 660, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3120', 'compra', 664, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5695', 'compra', 561, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7421', 'compra', 413, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1735', 'compra', 391, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6546', 'compra', 377, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1157', 'compra', 496, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1838', 'compra', 225, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2997', 'compra', 301, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1910', 'compra', 832, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5552', 'compra', 599, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8321', 'compra', 302, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8426', 'compra', 267, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8933', 'compra', 269, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9783', 'compra', 553, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3928', 'compra', 20, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3484', 'compra', 742, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6272', 'compra', 67, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2748', 'compra', 533, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4700', 'compra', 552, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4380', 'compra', 311, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4545', 'compra', 214, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6362', 'compra', 726, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4294', 'compra', 213, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4777', 'compra', 14, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4632', 'compra', 481, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5768', 'compra', 420, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8264', 'compra', 602, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2919', 'compra', 389, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6654', 'compra', 693, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4790', 'compra', 134, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7280', 'compra', 642, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8681', 'compra', 345, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8933', 'compra', 745, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1400', 'compra', 149, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8261', 'compra', 759, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6672', 'compra', 822, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1328', 'compra', 123, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6328', 'compra', 243, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9413', 'compra', 493, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6835', 'compra', 557, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6871', 'compra', 635, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2173', 'compra', 239, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1936', 'compra', 195, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3501', 'compra', 873, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4709', 'compra', 657, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1436', 'compra', 769, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1233', 'compra', 60, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7812', 'compra', 669, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1838', 'compra', 282, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9389', 'compra', 293, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4942', 'compra', 348, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6165', 'compra', 261, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'compra', 396, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4076', 'compra', 332, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6446', 'compra', 379, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6652', 'compra', 727, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6672', 'compra', 760, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1233', 'compra', 414, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8933', 'compra', 754, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6701', 'compra', 468, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7722', 'compra', 821, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7646', 'compra', 824, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4253', 'compra', 374, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9914', 'compra', 942, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9498', 'compra', 700, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9340', 'compra', 121, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7220', 'compra', 249, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7457', 'compra', 655, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6876', 'compra', 786, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1418', 'compra', 688, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8001', 'compra', 652, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2106', 'compra', 697, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6224', 'compra', 821, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1395', 'compra', 44, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5613', 'compra', 217, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6620', 'compra', 508, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9972', 'compra', 539, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8936', 'compra', 444, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2647', 'compra', 545, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4722', 'compra', 372, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6637', 'compra', 811, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8214', 'compra', 532, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6743', 'compra', 554, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1936', 'compra', 412, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8581', 'compra', 736, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7864', 'compra', 55, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'compra', 801, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5849', 'compra', 278, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8831', 'compra', 560, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8951', 'compra', 750, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8909', 'compra', 392, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6936', 'compra', 854, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4670', 'compra', 694, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1045', 'compra', 778, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4821', 'compra', 258, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5316', 'compra', 468, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9908', 'compra', 426, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8206', 'compra', 566, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3574', 'compra', 121, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6497', 'compra', 51, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6227', 'compra', 252, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9736', 'compra', 930, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5799', 'compra', 438, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2182', 'compra', 413, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6272', 'compra', 956, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4502', 'compra', 116, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6166', 'compra', 593, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5077', 'compra', 858, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7498', 'compra', 849, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6152', 'compra', 891, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8039', 'compra', 316, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2618', 'compra', 67, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9976', 'compra', 340, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1453', 'compra', 561, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9245', 'compra', 391, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2905', 'compra', 754, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4732', 'compra', 296, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6439', 'compra', 216, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2680', 'compra', 796, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4205', 'compra', 218, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7170', 'compra', 518, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6439', 'compra', 528, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9362', 'compra', 70, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5290', 'compra', 526, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9403', 'compra', 788, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6637', 'compra', 931, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1695', 'compra', 91, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8343', 'compra', 381, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4506', 'compra', 992, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6201', 'compra', 316, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8793', 'compra', 610, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2140', 'compra', 917, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1117', 'compra', 533, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7778', 'compra', 570, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5460', 'compra', 494, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5316', 'compra', 107, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1781', 'compra', 129, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5763', 'compra', 288, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2586', 'compra', 775, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8117', 'compra', 975, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2579', 'compra', 37, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5290', 'compra', 633, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8714', 'compra', 779, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2662', 'compra', 52, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4488', 'compra', 976, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7078', 'compra', 422, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1056', 'compra', 303, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2475', 'compra', 734, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7078', 'compra', 336, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9315', 'compra', 571, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4048', 'compra', 334, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1233', 'compra', 299, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6651', 'compra', 182, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7168', 'compra', 273, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5059', 'compra', 681, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1151', 'compra', 88, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9057', 'compra', 765, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8981', 'compra', 812, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1010', 'compra', 126, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8321', 'compra', 121, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8681', 'compra', 865, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7659', 'compra', 415, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9969', 'compra', 359, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1195', 'compra', 812, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9245', 'compra', 65, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7802', 'compra', 442, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8591', 'compra', 71, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9333', 'compra', 369, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6544', 'compra', 174, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5117', 'compra', 452, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1328', 'compra', 746, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7416', 'compra', 265, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7185', 'compra', 230, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8909', 'compra', 75, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9918', 'compra', 395, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2140', 'compra', 748, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'compra', 334, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5851', 'compra', 176, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9531', 'compra', 92, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8442', 'compra', 882, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6592', 'compra', 219, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9779', 'compra', 511, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7125', 'compra', 707, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8241', 'compra', 740, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9736', 'compra', 355, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9206', 'compra', 726, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6984', 'compra', 392, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5289', 'compra', 139, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6166', 'compra', 528, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6637', 'compra', 641, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8153', 'compra', 208, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9652', 'compra', 765, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6082', 'compra', 559, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1781', 'compra', 28, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2953', 'compra', 83, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9978', 'compra', 501, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7150', 'compra', 640, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3852', 'compra', 806, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1117', 'compra', 445, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'compra', 88, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9972', 'compra', 439, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3585', 'compra', 736, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6266', 'compra', 454, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3096', 'compra', 672, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9371', 'compra', 26, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7851', 'compra', 677, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9591', 'compra', 947, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7165', 'compra', 110, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8757', 'compra', 474, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8834', 'compra', 621, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3447', 'compra', 177, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1936', 'compra', 495, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1630', 'compra', 435, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9916', 'compra', 999, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5613', 'compra', 529, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3333', 'compra', 754, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3727', 'compra', 706, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2858', 'compra', 895, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3450', 'compra', 529, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3404', 'compra', 700, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8644', 'compra', 634, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7049', 'compra', 786, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2695', 'compra', 151, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7894', 'compra', 749, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9054', 'compra', 958, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1008', 'compra', 610, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1233', 'compra', 596, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5524', 'compra', 610, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9714', 'compra', 98, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5204', 'compra', 345, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5419', 'compra', 396, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5000', 'compra', 379, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7225', 'compra', 620, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8172', 'compra', 319, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8272', 'compra', 699, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6400', 'compra', 215, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8119', 'compra', 376, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8462', 'compra', 647, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5412', 'compra', 452, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1037', 'compra', 927, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5249', 'compra', 518, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'compra', 949, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7762', 'compra', 315, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9209', 'compra', 920, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1735', 'compra', 793, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8002', 'compra', 99, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2617', 'compra', 976, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6227', 'compra', 58, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7501', 'compra', 63, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5402', 'compra', 973, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8705', 'compra', 274, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3727', 'compra', 665, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9800', 'compra', 105, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4293', 'compra', 548, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2467', 'compra', 73, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6882', 'compra', 857, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6500', 'compra', 300, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8868', 'compra', 969, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9846', 'compra', 795, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7220', 'compra', 285, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3574', 'compra', 128, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2874', 'compra', 915, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9193', 'compra', 735, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5638', 'compra', 639, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3013', 'compra', 237, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7722', 'compra', 45, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5866', 'compra', 151, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9698', 'compra', 54, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2861', 'compra', 147, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8527', 'compra', 96, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8241', 'compra', 702, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9371', 'compra', 119, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6615', 'compra', 565, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1910', 'compra', 240, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6460', 'compra', 313, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9152', 'compra', 800, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5411', 'compra', 498, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3554', 'compra', 170, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2999', 'compra', 893, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2884', 'compra', 573, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3727', 'compra', 543, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7625', 'compra', 266, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5675', 'compra', 620, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4254', 'compra', 960, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6620', 'compra', 50, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8484', 'compra', 520, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9663', 'compra', 25, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2140', 'compra', 662, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6146', 'compra', 349, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3736', 'compra', 855, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7322', 'compra', 201, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1895', 'compra', 435, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6654', 'compra', 865, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6876', 'compra', 12, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8705', 'compra', 841, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6430', 'compra', 141, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8726', 'compra', 170, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8704', 'compra', 842, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1830', 'compra', 260, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6711', 'compra', 342, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2214', 'compra', 442, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1297', 'compra', 64, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7770', 'compra', 592, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8272', 'compra', 583, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9736', 'compra', 641, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9315', 'compra', 296, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3554', 'compra', 929, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6080', 'compra', 604, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4942', 'compra', 884, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1360', 'compra', 427, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6080', 'compra', 63, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5412', 'compra', 966, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2647', 'compra', 937, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2617', 'compra', 349, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3720', 'compra', 870, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4790', 'compra', 965, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2781', 'compra', 892, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2038', 'compra', 581, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6737', 'compra', 688, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4873', 'compra', 734, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1813', 'compra', 608, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2076', 'compra', 796, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9866', 'compra', 409, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8714', 'compra', 802, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2060', 'compra', 636, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1220', 'compra', 30, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4247', 'compra', 692, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9080', 'compra', 280, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3628', 'compra', 249, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3709', 'compra', 267, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7878', 'compra', 253, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4993', 'compra', 994, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3475', 'compra', 519, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2038', 'compra', 367, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1781', 'compra', 778, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8625', 'compra', 353, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1157', 'compra', 119, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4747', 'compra', 951, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4732', 'compra', 579, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9819', 'compra', 573, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6016', 'compra', 230, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9978', 'compra', 852, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1314', 'compra', 247, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2968', 'compra', 677, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9844', 'compra', 659, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8704', 'compra', 194, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9062', 'compra', 155, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4777', 'compra', 482, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'compra', 92, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9224', 'compra', 205, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7432', 'compra', 525, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7722', 'compra', 631, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3253', 'compra', 396, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9707', 'compra', 517, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1442', 'compra', 421, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4386', 'compra', 630, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9391', 'compra', 359, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9426', 'compra', 94, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9171', 'compra', 211, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4807', 'compra', 163, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3253', 'compra', 954, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2387', 'compra', 934, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5084', 'compra', 9, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3457', 'compra', 123, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4365', 'compra', 521, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2919', 'compra', 317, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1698', 'compra', 235, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8234', 'compra', 614, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4670', 'compra', 955, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2497', 'compra', 21, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9260', 'compra', 858, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8630', 'compra', 708, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8367', 'compra', 278, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4961', 'compra', 237, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8210', 'compra', 967, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5646', 'compra', 600, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6615', 'compra', 721, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7242', 'compra', 465, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8147', 'compra', 722, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2884', 'compra', 591, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7242', 'compra', 246, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5524', 'compra', 440, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1147', 'compra', 136, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1830', 'compra', 705, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8241', 'compra', 386, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4992', 'compra', 673, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2149', 'compra', 121, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6652', 'compra', 693, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6883', 'compra', 802, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9972', 'compra', 288, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3996', 'compra', 315, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9712', 'compra', 637, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8223', 'compra', 949, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1542', 'compra', 361, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5275', 'compra', 307, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2058', 'compra', 706, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1101', 'compra', 701, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6255', 'compra', 25, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4871', 'compra', 886, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1869', 'compra', 359, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6546', 'compra', 277, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9918', 'compra', 351, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4247', 'compra', 389, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3129', 'compra', 794, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9057', 'compra', 566, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9914', 'compra', 389, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7095', 'compra', 112, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4762', 'compra', 242, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6080', 'compra', 154, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3811', 'compra', 220, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1827', 'compra', 885, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1964', 'compra', 117, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3231', 'compra', 228, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1194', 'compra', 507, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6894', 'compra', 288, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6875', 'compra', 516, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6224', 'compra', 325, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8249', 'compra', 917, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7219', 'compra', 609, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4722', 'compra', 562, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2022', 'compra', 475, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8075', 'compra', 884, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1581', 'compra', 686, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4822', 'compra', 763, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6152', 'compra', 991, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7802', 'compra', 226, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8241', 'compra', 402, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5928', 'compra', 54, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2926', 'compra', 677, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3461', 'compra', 18, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6892', 'compra', 650, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5290', 'compra', 596, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1893', 'compra', 29, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6562', 'compra', 634, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9366', 'compra', 207, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3461', 'compra', 362, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1869', 'compra', 633, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9795', 'compra', 711, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2730', 'compra', 527, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7318', 'compra', 390, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9676', 'compra', 178, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5973', 'compra', 742, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7226', 'compra', 186, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8084', 'compra', 66, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7095', 'compra', 554, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8241', 'compra', 634, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8637', 'compra', 717, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9199', 'compra', 991, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2998', 'compra', 714, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5763', 'compra', 109, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1385', 'compra', 46, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4842', 'compra', 337, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6055', 'compra', 647, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7607', 'compra', 418, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4930', 'compra', 342, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1667', 'compra', 929, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4346', 'compra', 276, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8659', 'compra', 778, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4485', 'compra', 13, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8312', 'compra', 134, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9409', 'compra', 301, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7778', 'compra', 549, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7622', 'compra', 40, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5016', 'compra', 5, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2968', 'compra', 144, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9573', 'compra', 221, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4000', 'compra', 608, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5295', 'compra', 72, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2182', 'compra', 110, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9527', 'compra', 569, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9358', 'compra', 873, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7646', 'compra', 951, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3920', 'compra', 808, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9916', 'compra', 241, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3450', 'compra', 551, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3404', 'compra', 894, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3554', 'compra', 234, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9349', 'compra', 96, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1625', 'compra', 280, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8119', 'compra', 59, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3354', 'compra', 22, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8219', 'compra', 175, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3120', 'compra', 102, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3878', 'compra', 737, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9245', 'compra', 746, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6655', 'compra', 798, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6215', 'compra', 389, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4792', 'compra', 741, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8713', 'compra', 212, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9722', 'compra', 156, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3401', 'compra', 709, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9722', 'compra', 720, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3260', 'compra', 337, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3404', 'compra', 302, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6152', 'compra', 557, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3404', 'compra', 447, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6544', 'compra', 588, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7165', 'compra', 803, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9631', 'compra', 800, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7217', 'compra', 912, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2839', 'compra', 419, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8477', 'compra', 694, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7459', 'compra', 581, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3330', 'compra', 454, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1950', 'compra', 388, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7078', 'compra', 496, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1797', 'compra', 96, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9007', 'compra', 690, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3409', 'compra', 656, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8084', 'compra', 603, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9531', 'compra', 264, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9040', 'compra', 87, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8676', 'compra', 481, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8713', 'compra', 230, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9808', 'compra', 164, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4747', 'compra', 214, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7673', 'compra', 669, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9340', 'compra', 320, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8367', 'compra', 536, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7170', 'compra', 342, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2475', 'compra', 676, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4807', 'compra', 829, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5675', 'compra', 98, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4766', 'compra', 491, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6310', 'compra', 644, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6046', 'compra', 91, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1736', 'compra', 713, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8777', 'compra', 974, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3928', 'compra', 507, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4634', 'compra', 270, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6894', 'compra', 348, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3599', 'compra', 189, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5763', 'compra', 615, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8075', 'compra', 866, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3061', 'compra', 773, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2579', 'compra', 46, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3996', 'compra', 68, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9830', 'compra', 16, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9800', 'compra', 469, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2968', 'compra', 386, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8169', 'compra', 187, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3749', 'compra', 340, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3001', 'compra', 954, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3344', 'compra', 331, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1658', 'compra', 887, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1739', 'compra', 383, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5531', 'compra', 609, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1015', 'compra', 796, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1142', 'compra', 679, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3475', 'compra', 966, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9159', 'compra', 896, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8909', 'compra', 655, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8214', 'compra', 54, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5103', 'compra', 993, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9974', 'compra', 346, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6592', 'compra', 440, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7027', 'compra', 137, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9228', 'compra', 115, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1698', 'compra', 121, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5613', 'compra', 361, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6615', 'compra', 664, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6328', 'compra', 664, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5763', 'compra', 654, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3145', 'compra', 903, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8011', 'compra', 297, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1085', 'compra', 187, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8754', 'compra', 225, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6055', 'compra', 265, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7220', 'compra', 442, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2093', 'compra', 582, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4360', 'compra', 58, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3935', 'compra', 161, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2529', 'compra', 399, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4386', 'compra', 675, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4949', 'compra', 203, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7069', 'compra', 731, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4873', 'compra', 294, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8750', 'compra', 400, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9795', 'compra', 199, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5980', 'compra', 273, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6859', 'compra', 167, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3071', 'compra', 498, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7722', 'compra', 205, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2338', 'compra', 382, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8868', 'compra', 512, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2214', 'compra', 309, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8591', 'compra', 400, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'compra', 882, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3121', 'compra', 726, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7722', 'compra', 498, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8750', 'compra', 391, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4630', 'compra', 200, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2999', 'compra', 18, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8834', 'compra', 84, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7027', 'compra', 642, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8259', 'compra', 717, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7198', 'compra', 409, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2724', 'compra', 42, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6711', 'compra', 121, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1729', 'compra', 809, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4961', 'compra', 906, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6946', 'compra', 587, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2926', 'compra', 554, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7541', 'compra', 367, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6643', 'compra', 832, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5204', 'compra', 142, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7138', 'compra', 301, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5412', 'compra', 229, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8831', 'compra', 980, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7701', 'compra', 327, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3765', 'compra', 741, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6629', 'compra', 722, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1150', 'compra', 821, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9779', 'compra', 452, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2030', 'compra', 963, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7675', 'compra', 260, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5196', 'compra', 794, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4777', 'compra', 853, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8234', 'compra', 187, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2038', 'compra', 513, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9916', 'compra', 168, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6788', 'compra', 706, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9020', 'compra', 263, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9914', 'compra', 396, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9391', 'compra', 363, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9733', 'compra', 622, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2680', 'compra', 954, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6835', 'compra', 311, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6744', 'compra', 268, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8726', 'compra', 598, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4747', 'compra', 577, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5343', 'compra', 696, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3994', 'compra', 863, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8147', 'compra', 49, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2919', 'compra', 612, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6255', 'compra', 576, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9679', 'compra', 74, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2760', 'compra', 48, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1022', 'compra', 826, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7629', 'compra', 898, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2393', 'compra', 587, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9783', 'compra', 540, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7851', 'compra', 197, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4525', 'compra', 306, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3162', 'compra', 485, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4455', 'compra', 835, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4429', 'compra', 72, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6551', 'compra', 89, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9193', 'compra', 479, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3121', 'compra', 165, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1625', 'compra', 2, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1347', 'compra', 724, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9059', 'compra', 486, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5695', 'compra', 537, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7150', 'compra', 813, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8367', 'compra', 393, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6400', 'compra', 535, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5412', 'compra', 275, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3684', 'compra', 904, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1363', 'compra', 366, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6403', 'compra', 539, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9862', 'compra', 381, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1376', 'compra', 137, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1711', 'compra', 142, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1857', 'compra', 147, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2724', 'compra', 563, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6697', 'compra', 435, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8264', 'compra', 910, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3095', 'compra', 551, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3736', 'compra', 189, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6637', 'compra', 797, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6338', 'compra', 448, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1203', 'compra', 114, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1075', 'compra', 623, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4183', 'compra', 324, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6546', 'compra', 25, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7260', 'compra', 549, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3906', 'compra', 443, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7416', 'compra', 121, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9573', 'compra', 50, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1625', 'compra', 253, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4993', 'compra', 12, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5597', 'compra', 988, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1151', 'compra', 62, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5059', 'compra', 98, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3071', 'compra', 400, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4634', 'compra', 957, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3727', 'compra', 300, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4630', 'compra', 458, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9372', 'compra', 11, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6650', 'compra', 867, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9844', 'compra', 486, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6551', 'compra', 89, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8849', 'compra', 218, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9057', 'compra', 476, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5158', 'compra', 74, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2058', 'compra', 864, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4455', 'compra', 819, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5750', 'compra', 677, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3013', 'compra', 450, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4106', 'compra', 981, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3811', 'compra', 105, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9412', 'compra', 952, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5249', 'compra', 800, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3236', 'compra', 757, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6302', 'compra', 723, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4233', 'compra', 55, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9096', 'compra', 682, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1643', 'compra', 340, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5663', 'compra', 664, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7505', 'compra', 141, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4394', 'compra', 247, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7446', 'compra', 506, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6046', 'compra', 321, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7185', 'compra', 575, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1813', 'compra', 244, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1453', 'compra', 167, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5048', 'compra', 683, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6292', 'compra', 696, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6736', 'compra', 664, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8039', 'compra', 39, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2301', 'compra', 459, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1643', 'compra', 381, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2925', 'compra', 889, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5343', 'compra', 600, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1150', 'compra', 930, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5629', 'compra', 660, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3350', 'compra', 594, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3401', 'compra', 609, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4070', 'compra', 711, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9498', 'compra', 439, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9020', 'compra', 325, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9138', 'compra', 320, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7421', 'compra', 268, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6994', 'compra', 96, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2596', 'compra', 88, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2218', 'compra', 809, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2515', 'compra', 997, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9692', 'compra', 164, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9371', 'compra', 430, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1768', 'compra', 176, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9199', 'compra', 307, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7809', 'compra', 750, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9800', 'compra', 101, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1711', 'compra', 17, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9712', 'compra', 739, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7310', 'compra', 535, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8933', 'compra', 116, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9071', 'compra', 177, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4377', 'compra', 552, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9206', 'compra', 536, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9159', 'compra', 914, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6984', 'compra', 351, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9714', 'compra', 624, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4790', 'compra', 626, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5695', 'compra', 797, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7601', 'compra', 324, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2713', 'compra', 577, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1950', 'compra', 950, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4080', 'compra', 673, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7446', 'compra', 230, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7257', 'compra', 23, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7646', 'compra', 318, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1262', 'compra', 389, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2515', 'compra', 461, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5015', 'compra', 685, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7498', 'compra', 785, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8909', 'compra', 127, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6310', 'compra', 606, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1596', 'compra', 771, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5084', 'compra', 700, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3193', 'compra', 481, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8940', 'compra', 198, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6984', 'compra', 547, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2919', 'compra', 90, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2647', 'compra', 543, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4394', 'compra', 229, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7012', 'compra', 281, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5663', 'compra', 1, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9426', 'compra', 104, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4135', 'compra', 800, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2839', 'compra', 390, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6338', 'compra', 521, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8965', 'compra', 648, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3178', 'compra', 849, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7833', 'compra', 639, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2022', 'compra', 762, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5460', 'compra', 759, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1328', 'compra', 849, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5937', 'compra', 82, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2680', 'compra', 1, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9120', 'compra', 751, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3151', 'compra', 168, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6088', 'compra', 112, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3333', 'compra', 954, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6593', 'compra', 122, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6892', 'compra', 985, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4215', 'compra', 531, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1526', 'compra', 46, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8392', 'compra', 131, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7809', 'compra', 366, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6716', 'compra', 301, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7225', 'compra', 279, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7255', 'compra', 299, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9199', 'compra', 856, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8249', 'compra', 4, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6701', 'compra', 422, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5117', 'compra', 910, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9338', 'compra', 338, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3709', 'compra', 535, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9199', 'compra', 781, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2001', 'compra', 271, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4055', 'compra', 95, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4956', 'compra', 994, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1735', 'compra', 296, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9524', 'compra', 745, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2839', 'compra', 176, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4942', 'compra', 290, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9389', 'compra', 234, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2635', 'compra', 995, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4842', 'compra', 666, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6131', 'compra', 428, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4790', 'compra', 296, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5695', 'compra', 414, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9531', 'compra', 6, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9206', 'compra', 493, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6761', 'compra', 414, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8909', 'compra', 812, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'compra', 720, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1711', 'compra', 515, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4894', 'compra', 275, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1085', 'compra', 961, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2475', 'compra', 542, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1975', 'compra', 334, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8234', 'compra', 564, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5656', 'compra', 214, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'compra', 34, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8343', 'compra', 306, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2926', 'compra', 768, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1436', 'compra', 639, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1526', 'compra', 915, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6492', 'compra', 253, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1072', 'compra', 215, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3831', 'compra', 99, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9693', 'compra', 791, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8261', 'compra', 453, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8726', 'compra', 315, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1686', 'compra', 146, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3145', 'compra', 246, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'compra', 389, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1075', 'compra', 759, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3928', 'compra', 765, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2221', 'compra', 171, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8209', 'compra', 109, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7049', 'compra', 274, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4106', 'compra', 366, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8609', 'compra', 258, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3821', 'compra', 715, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1069', 'compra', 169, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4048', 'compra', 235, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4715', 'compra', 433, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5419', 'compra', 860, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8157', 'compra', 460, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8206', 'compra', 635, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7629', 'compra', 406, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2884', 'compra', 886, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9245', 'compra', 538, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4961', 'compra', 504, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9362', 'compra', 152, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9652', 'compra', 432, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7559', 'compra', 161, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4452', 'compra', 32, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4785', 'compra', 939, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9454', 'compra', 755, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2038', 'compra', 965, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3344', 'compra', 542, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3852', 'compra', 147, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5851', 'compra', 731, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1998', 'compra', 45, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7262', 'compra', 177, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4080', 'compra', 508, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6268', 'compra', 592, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1596', 'compra', 359, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'compra', 841, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7762', 'compra', 975, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8856', 'compra', 694, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2301', 'compra', 21, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5776', 'compra', 515, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4249', 'compra', 361, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5866', 'compra', 727, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3136', 'compra', 308, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9412', 'compra', 995, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3642', 'compra', 436, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9761', 'compra', 250, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6439', 'compra', 847, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5411', 'compra', 996, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4695', 'compra', 544, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8108', 'compra', 104, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4873', 'compra', 219, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3042', 'compra', 103, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4386', 'compra', 125, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5980', 'compra', 909, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4341', 'compra', 99, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1658', 'compra', 929, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9273', 'compra', 103, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3729', 'compra', 707, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9849', 'compra', 290, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4580', 'compra', 546, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5597', 'compra', 878, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2725', 'compra', 598, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7168', 'compra', 553, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1203', 'compra', 22, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5663', 'compra', 616, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2444', 'compra', 378, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2665', 'compra', 327, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3013', 'compra', 512, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7069', 'compra', 552, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1895', 'compra', 221, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4455', 'compra', 313, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');

-- Reservas (500)
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5113', 'reserva', 227, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4455', 'reserva', 69, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1288', 'reserva', 653, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3852', 'reserva', 156, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9736', 'reserva', 636, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9761', 'reserva', 549, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7457', 'reserva', 665, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4253', 'reserva', 887, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5295', 'reserva', 635, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1150', 'reserva', 967, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9846', 'reserva', 158, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4709', 'reserva', 799, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5895', 'reserva', 292, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2617', 'reserva', 873, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6737', 'reserva', 833, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7501', 'reserva', 364, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8261', 'reserva', 680, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4076', 'reserva', 846, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4683', 'reserva', 398, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8676', 'reserva', 513, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5799', 'reserva', 756, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6600', 'reserva', 480, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3348', 'reserva', 533, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4284', 'reserva', 792, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3749', 'reserva', 70, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6562', 'reserva', 788, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7809', 'reserva', 503, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1037', 'reserva', 93, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5685', 'reserva', 168, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2549', 'reserva', 435, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9372', 'reserva', 792, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2586', 'reserva', 107, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1467', 'reserva', 560, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8566', 'reserva', 361, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1936', 'reserva', 16, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3350', 'reserva', 917, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7318', 'reserva', 598, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2618', 'reserva', 881, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1578', 'reserva', 84, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8750', 'reserva', 18, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7541', 'reserva', 810, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6977', 'reserva', 140, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4807', 'reserva', 371, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1439', 'reserva', 990, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7318', 'reserva', 759, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4076', 'reserva', 391, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4630', 'reserva', 331, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5406', 'reserva', 682, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8951', 'reserva', 590, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5059', 'reserva', 689, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1643', 'reserva', 377, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1643', 'reserva', 65, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4557', 'reserva', 637, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3457', 'reserva', 339, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2596', 'reserva', 146, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1297', 'reserva', 582, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2730', 'reserva', 190, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5162', 'reserva', 504, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5637', 'reserva', 352, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9974', 'reserva', 465, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5103', 'reserva', 109, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4942', 'reserva', 200, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4090', 'reserva', 49, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9830', 'reserva', 168, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3475', 'reserva', 438, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8006', 'reserva', 148, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4360', 'reserva', 900, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2925', 'reserva', 171, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2752', 'reserva', 238, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8627', 'reserva', 141, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1015', 'reserva', 468, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8111', 'reserva', 132, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5383', 'reserva', 781, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7432', 'reserva', 346, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4127', 'reserva', 136, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8714', 'reserva', 327, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2529', 'reserva', 792, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8637', 'reserva', 304, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2905', 'reserva', 835, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8856', 'reserva', 616, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5613', 'reserva', 217, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8713', 'reserva', 566, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9918', 'reserva', 891, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2034', 'reserva', 454, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1813', 'reserva', 766, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3193', 'reserva', 488, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5815', 'reserva', 517, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2076', 'reserva', 135, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4429', 'reserva', 670, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6002', 'reserva', 65, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2301', 'reserva', 778, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3599', 'reserva', 533, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8074', 'reserva', 890, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7505', 'reserva', 729, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4055', 'reserva', 486, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5204', 'reserva', 500, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2760', 'reserva', 223, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5675', 'reserva', 686, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1431', 'reserva', 384, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2662', 'reserva', 641, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8214', 'reserva', 886, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2750', 'reserva', 239, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7257', 'reserva', 627, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1406', 'reserva', 501, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9318', 'reserva', 985, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7198', 'reserva', 258, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5239', 'reserva', 540, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6736', 'reserva', 686, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6446', 'reserva', 735, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1389', 'reserva', 80, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9698', 'reserva', 652, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1075', 'reserva', 730, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9437', 'reserva', 642, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6743', 'reserva', 550, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5815', 'reserva', 190, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2968', 'reserva', 26, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9795', 'reserva', 800, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7858', 'reserva', 644, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4146', 'reserva', 190, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3475', 'reserva', 149, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1262', 'reserva', 993, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1940', 'reserva', 818, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1314', 'reserva', 445, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3652', 'reserva', 177, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5851', 'reserva', 584, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3803', 'reserva', 119, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1157', 'reserva', 335, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2151', 'reserva', 897, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8965', 'reserva', 488, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9585', 'reserva', 98, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6362', 'reserva', 30, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9846', 'reserva', 520, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1700', 'reserva', 676, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1117', 'reserva', 631, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9403', 'reserva', 871, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1037', 'reserva', 441, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9199', 'reserva', 260, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7864', 'reserva', 876, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4842', 'reserva', 982, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1439', 'reserva', 59, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6034', 'reserva', 142, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8442', 'reserva', 213, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5258', 'reserva', 540, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7498', 'reserva', 679, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2968', 'reserva', 474, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9830', 'reserva', 903, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9372', 'reserva', 594, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6302', 'reserva', 543, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5830', 'reserva', 898, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4790', 'reserva', 410, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5402', 'reserva', 303, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8014', 'reserva', 212, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9652', 'reserva', 19, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2635', 'reserva', 136, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4429', 'reserva', 192, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2999', 'reserva', 604, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7544', 'reserva', 975, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4785', 'reserva', 804, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1637', 'reserva', 123, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1069', 'reserva', 871, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5343', 'reserva', 776, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8002', 'reserva', 684, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1599', 'reserva', 787, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6643', 'reserva', 24, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2874', 'reserva', 52, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2530', 'reserva', 367, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'reserva', 176, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4091', 'reserva', 811, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4178', 'reserva', 53, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8981', 'reserva', 277, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6080', 'reserva', 539, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4091', 'reserva', 390, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4146', 'reserva', 998, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9800', 'reserva', 903, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4849', 'reserva', 195, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7858', 'reserva', 984, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4785', 'reserva', 620, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5295', 'reserva', 815, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6615', 'reserva', 886, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8923', 'reserva', 304, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7728', 'reserva', 943, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4630', 'reserva', 937, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3822', 'reserva', 599, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9469', 'reserva', 763, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'reserva', 946, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3120', 'reserva', 805, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9946', 'reserva', 582, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3684', 'reserva', 800, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6637', 'reserva', 398, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2922', 'reserva', 482, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6497', 'reserva', 720, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3945', 'reserva', 646, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4343', 'reserva', 571, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4849', 'reserva', 161, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8272', 'reserva', 2, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5316', 'reserva', 890, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4183', 'reserva', 731, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7220', 'reserva', 328, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4076', 'reserva', 135, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3729', 'reserva', 626, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9362', 'reserva', 314, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4284', 'reserva', 829, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5032', 'reserva', 345, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5223', 'reserva', 225, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6215', 'reserva', 314, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5960', 'reserva', 337, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6082', 'reserva', 24, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8173', 'reserva', 298, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8713', 'reserva', 25, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2049', 'reserva', 912, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4993', 'reserva', 796, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7032', 'reserva', 369, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3253', 'reserva', 840, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8214', 'reserva', 14, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5084', 'reserva', 639, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4557', 'reserva', 946, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3327', 'reserva', 480, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1418', 'reserva', 723, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1238', 'reserva', 792, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7489', 'reserva', 166, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4762', 'reserva', 118, '2024-07-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8264', 'reserva', 366, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9054', 'reserva', 386, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6255', 'reserva', 732, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9185', 'reserva', 95, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7225', 'reserva', 605, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7501', 'reserva', 123, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7032', 'reserva', 597, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3373', 'reserva', 439, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5204', 'reserva', 746, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6834', 'reserva', 268, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4091', 'reserva', 626, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9468', 'reserva', 181, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7812', 'reserva', 732, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6403', 'reserva', 37, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8940', 'reserva', 208, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5774', 'reserva', 142, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3878', 'reserva', 606, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7894', 'reserva', 252, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3727', 'reserva', 870, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9372', 'reserva', 260, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5967', 'reserva', 731, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6655', 'reserva', 859, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3333', 'reserva', 81, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1431', 'reserva', 940, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3506', 'reserva', 241, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3484', 'reserva', 873, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9849', 'reserva', 973, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6985', 'reserva', 848, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4217', 'reserva', 707, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7242', 'reserva', 341, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2748', 'reserva', 24, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8951', 'reserva', 879, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4700', 'reserva', 577, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8048', 'reserva', 956, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9524', 'reserva', 8, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2157', 'reserva', 83, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5489', 'reserva', 10, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2032', 'reserva', 970, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4453', 'reserva', 602, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6215', 'reserva', 723, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2618', 'reserva', 936, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8933', 'reserva', 636, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7280', 'reserva', 650, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7226', 'reserva', 549, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2106', 'reserva', 414, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4171', 'reserva', 323, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2922', 'reserva', 598, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'reserva', 286, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5531', 'reserva', 421, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2991', 'reserva', 917, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1673', 'reserva', 608, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6431', 'reserva', 888, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3256', 'reserva', 964, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4683', 'reserva', 576, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9510', 'reserva', 829, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9733', 'reserva', 271, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4065', 'reserva', 311, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9040', 'reserva', 223, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1142', 'reserva', 672, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5448', 'reserva', 918, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1015', 'reserva', 715, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4683', 'reserva', 617, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9271', 'reserva', 930, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9916', 'reserva', 942, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7421', 'reserva', 489, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7858', 'reserva', 992, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8915', 'reserva', 932, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7322', 'reserva', 698, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6315', 'reserva', 341, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9844', 'reserva', 573, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5021', 'reserva', 965, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3682', 'reserva', 788, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9185', 'reserva', 306, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9761', 'reserva', 759, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4821', 'reserva', 199, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1578', 'reserva', 180, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8777', 'reserva', 819, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5290', 'reserva', 274, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8108', 'reserva', 646, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9059', 'reserva', 123, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8400', 'reserva', 179, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1347', 'reserva', 392, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3330', 'reserva', 65, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6446', 'reserva', 504, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9340', 'reserva', 18, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6616', 'reserva', 807, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4654', 'reserva', 532, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4961', 'reserva', 313, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8681', 'reserva', 827, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1328', 'reserva', 22, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8234', 'reserva', 669, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3488', 'reserva', 457, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7544', 'reserva', 750, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3404', 'reserva', 777, '2024-06-01', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1431', 'reserva', 516, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7728', 'reserva', 469, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'reserva', 768, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6651', 'reserva', 579, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4743', 'reserva', 80, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9591', 'reserva', 579, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4792', 'reserva', 150, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5406', 'reserva', 217, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9159', 'reserva', 777, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2444', 'reserva', 165, '2024-07-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8705', 'reserva', 591, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6403', 'reserva', 811, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8897', 'reserva', 629, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6016', 'reserva', 442, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6871', 'reserva', 970, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2579', 'reserva', 840, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6985', 'reserva', 95, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1700', 'reserva', 13, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2253', 'reserva', 888, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2922', 'reserva', 362, '2024-06-01', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8975', 'reserva', 709, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4762', 'reserva', 595, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8153', 'reserva', 919, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5275', 'reserva', 626, '2024-06-01', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1232', 'reserva', 418, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6547', 'reserva', 501, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4183', 'reserva', 510, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3811', 'reserva', 536, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2713', 'reserva', 39, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1625', 'reserva', 665, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3803', 'reserva', 357, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6051', 'reserva', 116, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7701', 'reserva', 212, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7537', 'reserva', 378, '2024-07-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3178', 'reserva', 393, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9333', 'reserva', 659, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8039', 'reserva', 888, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8757', 'reserva', 875, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3881', 'reserva', 159, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7049', 'reserva', 212, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1698', 'reserva', 668, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1429', 'reserva', 745, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9409', 'reserva', 574, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7217', 'reserva', 924, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3344', 'reserva', 321, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4247', 'reserva', 97, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3939', 'reserva', 983, '2024-06-15', 'Auditorio Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7611', 'reserva', 45, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9315', 'reserva', 103, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6800', 'reserva', 674, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4065', 'reserva', 506, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3506', 'reserva', 311, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7203', 'reserva', 978, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6655', 'reserva', 561, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1596', 'reserva', 652, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5117', 'reserva', 668, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3120', 'reserva', 344, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8006', 'reserva', 398, '2024-07-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4732', 'reserva', 555, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3821', 'reserva', 837, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5016', 'reserva', 207, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5434', 'reserva', 218, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5249', 'reserva', 213, '2024-06-01', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1363', 'reserva', 799, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8581', 'reserva', 11, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2298', 'reserva', 144, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8777', 'reserva', 306, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1797', 'reserva', 226, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2253', 'reserva', 919, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2998', 'reserva', 137, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3434', 'reserva', 112, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4270', 'reserva', 397, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9978', 'reserva', 201, '2024-06-15', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3129', 'reserva', 817, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9315', 'reserva', 920, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3915', 'reserva', 550, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5478', 'reserva', 445, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2393', 'reserva', 168, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3996', 'reserva', 645, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7225', 'reserva', 353, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9849', 'reserva', 283, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2724', 'reserva', 901, '2024-06-15', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3803', 'reserva', 153, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2984', 'reserva', 572, '2024-06-15', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5691', 'reserva', 72, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2891', 'reserva', 373, '2024-06-15', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4000', 'reserva', 17, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2966', 'reserva', 329, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1386', 'reserva', 925, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8117', 'reserva', 868, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3333', 'reserva', 387, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5980', 'reserva', 150, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3409', 'reserva', 206, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1371', 'reserva', 44, '2024-06-01', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9403', 'reserva', 457, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9631', 'reserva', 504, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4992', 'reserva', 477, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7728', 'reserva', 321, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4284', 'reserva', 254, '2024-07-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8340', 'reserva', 142, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1149', 'reserva', 186, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9057', 'reserva', 612, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8630', 'reserva', 749, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8367', 'reserva', 591, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8566', 'reserva', 694, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9362', 'reserva', 19, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6201', 'reserva', 67, '2024-06-01', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6654', 'reserva', 960, '2024-06-01', 'Palacio de Congresos', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4090', 'reserva', 166, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8981', 'reserva', 91, '2024-06-01', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4785', 'reserva', 10, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8172', 'reserva', 243, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3475', 'reserva', 839, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4343', 'reserva', 297, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4249', 'reserva', 974, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2549', 'reserva', 590, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5162', 'reserva', 682, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6713', 'reserva', 679, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3624', 'reserva', 732, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6756', 'reserva', 206, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6655', 'reserva', 61, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2093', 'reserva', 509, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8936', 'reserva', 27, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3071', 'reserva', 143, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3506', 'reserva', 65, '2024-06-15', 'Auditorio Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4215', 'reserva', 62, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6131', 'reserva', 669, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5489', 'reserva', 511, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2038', 'reserva', 383, '2024-06-01', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6331', 'reserva', 932, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3505', 'reserva', 502, '2024-06-01', 'Estadio Principal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9972', 'reserva', 899, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1150', 'reserva', 683, '2024-06-15', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6055', 'reserva', 370, '2024-06-01', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4048', 'reserva', 757, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8258', 'reserva', 892, '2024-06-15', 'Arena Deportiva', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9260', 'reserva', 978, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5015', 'reserva', 613, '2024-06-15', 'Teatro Municipal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6439', 'reserva', 502, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7260', 'reserva', 22, '2024-06-01', 'Teatro Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1008', 'reserva', 856, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7749', 'reserva', 533, '2024-06-01', 'Teatro Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3457', 'reserva', 35, '2024-06-15', 'Auditorio Municipal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2724', 'reserva', 857, '2024-06-01', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4654', 'reserva', 909, '2024-06-01', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6672', 'reserva', 874, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5768', 'reserva', 927, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9273', 'reserva', 386, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5412', 'reserva', 185, '2024-06-15', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2218', 'reserva', 323, '2024-06-01', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7421', 'reserva', 3, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9159', 'reserva', 662, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6016', 'reserva', 821, '2024-06-15', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8527', 'reserva', 549, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9676', 'reserva', 748, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9679', 'reserva', 958, '2024-06-15', 'Arena Deportiva', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4090', 'reserva', 263, '2024-06-15', 'Estadio Principal', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7414', 'reserva', 920, '2024-06-01', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6492', 'reserva', 269, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7168', 'reserva', 876, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1744', 'reserva', 752, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9693', 'reserva', 629, '2024-06-01', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8834', 'reserva', 164, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1436', 'reserva', 645, '2024-06-15', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5768', 'reserva', 192, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7551', 'reserva', 48, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8477', 'reserva', 733, '2024-06-15', 'Palacio de Congresos', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_2905', 'reserva', 508, '2024-06-15', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4506', 'reserva', 843, '2024-06-15', 'Arena Deportiva', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8726', 'reserva', 154, '2024-06-01', 'Teatro Municipal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3755', 'reserva', 605, '2024-06-15', 'Teatro Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3803', 'reserva', 124, '2024-06-15', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_9440', 'reserva', 518, '2024-06-15', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5489', 'reserva', 895, '2024-06-01', 'Auditorio Municipal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_8276', 'reserva', 663, '2024-06-15', 'Auditorio Municipal', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3513', 'reserva', 347, '2024-06-01', 'Palacio de Congresos', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3193', 'reserva', 845, '2024-06-01', 'Arena Deportiva', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1673', 'reserva', 467, '2024-06-01', 'Arena Deportiva', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_7851', 'reserva', 641, '2024-06-15', 'Estadio Principal', 1, 'Jubilado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4992', 'reserva', 397, '2024-06-01', 'Estadio Principal', 1, 'Bebe');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_6224', 'reserva', 118, '2024-06-15', 'Palacio de Congresos', 1, 'Infantil');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_3358', 'reserva', 39, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_4654', 'reserva', 698, '2024-06-15', 'Estadio Principal', 1, 'Adulto');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_5629', 'reserva', 519, '2024-06-01', 'Palacio de Congresos', 1, 'Parado');
INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('BENCH_1439', 'reserva', 84, '2024-06-01', 'Arena Deportiva', 1, 'Parado');

-- Seleccionar reservas para anulaciones
SELECT @last_insert_id := LAST_INSERT_ID();

-- Anulaciones (200)
CALL cancelar_reserva(@last_insert_id - 499);
CALL cancelar_reserva(@last_insert_id - 498);
CALL cancelar_reserva(@last_insert_id - 497);
CALL cancelar_reserva(@last_insert_id - 496);
CALL cancelar_reserva(@last_insert_id - 495);
CALL cancelar_reserva(@last_insert_id - 494);
CALL cancelar_reserva(@last_insert_id - 493);
CALL cancelar_reserva(@last_insert_id - 492);
CALL cancelar_reserva(@last_insert_id - 491);
CALL cancelar_reserva(@last_insert_id - 490);
CALL cancelar_reserva(@last_insert_id - 489);
CALL cancelar_reserva(@last_insert_id - 488);
CALL cancelar_reserva(@last_insert_id - 487);
CALL cancelar_reserva(@last_insert_id - 486);
CALL cancelar_reserva(@last_insert_id - 485);
CALL cancelar_reserva(@last_insert_id - 484);
CALL cancelar_reserva(@last_insert_id - 483);
CALL cancelar_reserva(@last_insert_id - 482);
CALL cancelar_reserva(@last_insert_id - 481);
CALL cancelar_reserva(@last_insert_id - 480);
CALL cancelar_reserva(@last_insert_id - 479);
CALL cancelar_reserva(@last_insert_id - 478);
CALL cancelar_reserva(@last_insert_id - 477);
CALL cancelar_reserva(@last_insert_id - 476);
CALL cancelar_reserva(@last_insert_id - 475);
CALL cancelar_reserva(@last_insert_id - 474);
CALL cancelar_reserva(@last_insert_id - 473);
CALL cancelar_reserva(@last_insert_id - 472);
CALL cancelar_reserva(@last_insert_id - 471);
CALL cancelar_reserva(@last_insert_id - 470);
CALL cancelar_reserva(@last_insert_id - 469);
CALL cancelar_reserva(@last_insert_id - 468);
CALL cancelar_reserva(@last_insert_id - 467);
CALL cancelar_reserva(@last_insert_id - 466);
CALL cancelar_reserva(@last_insert_id - 465);
CALL cancelar_reserva(@last_insert_id - 464);
CALL cancelar_reserva(@last_insert_id - 463);
CALL cancelar_reserva(@last_insert_id - 462);
CALL cancelar_reserva(@last_insert_id - 461);
CALL cancelar_reserva(@last_insert_id - 460);
CALL cancelar_reserva(@last_insert_id - 459);
CALL cancelar_reserva(@last_insert_id - 458);
CALL cancelar_reserva(@last_insert_id - 457);
CALL cancelar_reserva(@last_insert_id - 456);
CALL cancelar_reserva(@last_insert_id - 455);
CALL cancelar_reserva(@last_insert_id - 454);
CALL cancelar_reserva(@last_insert_id - 453);
CALL cancelar_reserva(@last_insert_id - 452);
CALL cancelar_reserva(@last_insert_id - 451);
CALL cancelar_reserva(@last_insert_id - 450);
CALL cancelar_reserva(@last_insert_id - 449);
CALL cancelar_reserva(@last_insert_id - 448);
CALL cancelar_reserva(@last_insert_id - 447);
CALL cancelar_reserva(@last_insert_id - 446);
CALL cancelar_reserva(@last_insert_id - 445);
CALL cancelar_reserva(@last_insert_id - 444);
CALL cancelar_reserva(@last_insert_id - 443);
CALL cancelar_reserva(@last_insert_id - 442);
CALL cancelar_reserva(@last_insert_id - 441);
CALL cancelar_reserva(@last_insert_id - 440);
CALL cancelar_reserva(@last_insert_id - 439);
CALL cancelar_reserva(@last_insert_id - 438);
CALL cancelar_reserva(@last_insert_id - 437);
CALL cancelar_reserva(@last_insert_id - 436);
CALL cancelar_reserva(@last_insert_id - 435);
CALL cancelar_reserva(@last_insert_id - 434);
CALL cancelar_reserva(@last_insert_id - 433);
CALL cancelar_reserva(@last_insert_id - 432);
CALL cancelar_reserva(@last_insert_id - 431);
CALL cancelar_reserva(@last_insert_id - 430);
CALL cancelar_reserva(@last_insert_id - 429);
CALL cancelar_reserva(@last_insert_id - 428);
CALL cancelar_reserva(@last_insert_id - 427);
CALL cancelar_reserva(@last_insert_id - 426);
CALL cancelar_reserva(@last_insert_id - 425);
CALL cancelar_reserva(@last_insert_id - 424);
CALL cancelar_reserva(@last_insert_id - 423);
CALL cancelar_reserva(@last_insert_id - 422);
CALL cancelar_reserva(@last_insert_id - 421);
CALL cancelar_reserva(@last_insert_id - 420);
CALL cancelar_reserva(@last_insert_id - 419);
CALL cancelar_reserva(@last_insert_id - 418);
CALL cancelar_reserva(@last_insert_id - 417);
CALL cancelar_reserva(@last_insert_id - 416);
CALL cancelar_reserva(@last_insert_id - 415);
CALL cancelar_reserva(@last_insert_id - 414);
CALL cancelar_reserva(@last_insert_id - 413);
CALL cancelar_reserva(@last_insert_id - 412);
CALL cancelar_reserva(@last_insert_id - 411);
CALL cancelar_reserva(@last_insert_id - 410);
CALL cancelar_reserva(@last_insert_id - 409);
CALL cancelar_reserva(@last_insert_id - 408);
CALL cancelar_reserva(@last_insert_id - 407);
CALL cancelar_reserva(@last_insert_id - 406);
CALL cancelar_reserva(@last_insert_id - 405);
CALL cancelar_reserva(@last_insert_id - 404);
CALL cancelar_reserva(@last_insert_id - 403);
CALL cancelar_reserva(@last_insert_id - 402);
CALL cancelar_reserva(@last_insert_id - 401);
CALL cancelar_reserva(@last_insert_id - 400);
CALL cancelar_reserva(@last_insert_id - 399);
CALL cancelar_reserva(@last_insert_id - 398);
CALL cancelar_reserva(@last_insert_id - 397);
CALL cancelar_reserva(@last_insert_id - 396);
CALL cancelar_reserva(@last_insert_id - 395);
CALL cancelar_reserva(@last_insert_id - 394);
CALL cancelar_reserva(@last_insert_id - 393);
CALL cancelar_reserva(@last_insert_id - 392);
CALL cancelar_reserva(@last_insert_id - 391);
CALL cancelar_reserva(@last_insert_id - 390);
CALL cancelar_reserva(@last_insert_id - 389);
CALL cancelar_reserva(@last_insert_id - 388);
CALL cancelar_reserva(@last_insert_id - 387);
CALL cancelar_reserva(@last_insert_id - 386);
CALL cancelar_reserva(@last_insert_id - 385);
CALL cancelar_reserva(@last_insert_id - 384);
CALL cancelar_reserva(@last_insert_id - 383);
CALL cancelar_reserva(@last_insert_id - 382);
CALL cancelar_reserva(@last_insert_id - 381);
CALL cancelar_reserva(@last_insert_id - 380);
CALL cancelar_reserva(@last_insert_id - 379);
CALL cancelar_reserva(@last_insert_id - 378);
CALL cancelar_reserva(@last_insert_id - 377);
CALL cancelar_reserva(@last_insert_id - 376);
CALL cancelar_reserva(@last_insert_id - 375);
CALL cancelar_reserva(@last_insert_id - 374);
CALL cancelar_reserva(@last_insert_id - 373);
CALL cancelar_reserva(@last_insert_id - 372);
CALL cancelar_reserva(@last_insert_id - 371);
CALL cancelar_reserva(@last_insert_id - 370);
CALL cancelar_reserva(@last_insert_id - 369);
CALL cancelar_reserva(@last_insert_id - 368);
CALL cancelar_reserva(@last_insert_id - 367);
CALL cancelar_reserva(@last_insert_id - 366);
CALL cancelar_reserva(@last_insert_id - 365);
CALL cancelar_reserva(@last_insert_id - 364);
CALL cancelar_reserva(@last_insert_id - 363);
CALL cancelar_reserva(@last_insert_id - 362);
CALL cancelar_reserva(@last_insert_id - 361);
CALL cancelar_reserva(@last_insert_id - 360);
CALL cancelar_reserva(@last_insert_id - 359);
CALL cancelar_reserva(@last_insert_id - 358);
CALL cancelar_reserva(@last_insert_id - 357);
CALL cancelar_reserva(@last_insert_id - 356);
CALL cancelar_reserva(@last_insert_id - 355);
CALL cancelar_reserva(@last_insert_id - 354);
CALL cancelar_reserva(@last_insert_id - 353);
CALL cancelar_reserva(@last_insert_id - 352);
CALL cancelar_reserva(@last_insert_id - 351);
CALL cancelar_reserva(@last_insert_id - 350);
CALL cancelar_reserva(@last_insert_id - 349);
CALL cancelar_reserva(@last_insert_id - 348);
CALL cancelar_reserva(@last_insert_id - 347);
CALL cancelar_reserva(@last_insert_id - 346);
CALL cancelar_reserva(@last_insert_id - 345);
CALL cancelar_reserva(@last_insert_id - 344);
CALL cancelar_reserva(@last_insert_id - 343);
CALL cancelar_reserva(@last_insert_id - 342);
CALL cancelar_reserva(@last_insert_id - 341);
CALL cancelar_reserva(@last_insert_id - 340);
CALL cancelar_reserva(@last_insert_id - 339);
CALL cancelar_reserva(@last_insert_id - 338);
CALL cancelar_reserva(@last_insert_id - 337);
CALL cancelar_reserva(@last_insert_id - 336);
CALL cancelar_reserva(@last_insert_id - 335);
CALL cancelar_reserva(@last_insert_id - 334);
CALL cancelar_reserva(@last_insert_id - 333);
CALL cancelar_reserva(@last_insert_id - 332);
CALL cancelar_reserva(@last_insert_id - 331);
CALL cancelar_reserva(@last_insert_id - 330);
CALL cancelar_reserva(@last_insert_id - 329);
CALL cancelar_reserva(@last_insert_id - 328);
CALL cancelar_reserva(@last_insert_id - 327);
CALL cancelar_reserva(@last_insert_id - 326);
CALL cancelar_reserva(@last_insert_id - 325);
CALL cancelar_reserva(@last_insert_id - 324);
CALL cancelar_reserva(@last_insert_id - 323);
CALL cancelar_reserva(@last_insert_id - 322);
CALL cancelar_reserva(@last_insert_id - 321);
CALL cancelar_reserva(@last_insert_id - 320);
CALL cancelar_reserva(@last_insert_id - 319);
CALL cancelar_reserva(@last_insert_id - 318);
CALL cancelar_reserva(@last_insert_id - 317);
CALL cancelar_reserva(@last_insert_id - 316);
CALL cancelar_reserva(@last_insert_id - 315);
CALL cancelar_reserva(@last_insert_id - 314);
CALL cancelar_reserva(@last_insert_id - 313);
CALL cancelar_reserva(@last_insert_id - 312);
CALL cancelar_reserva(@last_insert_id - 311);
CALL cancelar_reserva(@last_insert_id - 310);
CALL cancelar_reserva(@last_insert_id - 309);
CALL cancelar_reserva(@last_insert_id - 308);
CALL cancelar_reserva(@last_insert_id - 307);
CALL cancelar_reserva(@last_insert_id - 306);
CALL cancelar_reserva(@last_insert_id - 305);
CALL cancelar_reserva(@last_insert_id - 304);
CALL cancelar_reserva(@last_insert_id - 303);
CALL cancelar_reserva(@last_insert_id - 302);
CALL cancelar_reserva(@last_insert_id - 301);
CALL cancelar_reserva(@last_insert_id - 300);

-- Consultas (300)
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;
SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';
SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;

COMMIT;
SELECT TIMEDIFF(NOW(), @start_time) as tiempo_ejecucion;
