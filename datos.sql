USE `mydb`;

-- Sample data for Cliente
INSERT INTO Cliente (datos_bancarios) VALUES
  ('1234-5678-9012-3456'),
  ('9876-5432-1098-7654');

-- Sample data for Recinto
INSERT INTO Recinto (id_nombre, aforo_max) VALUES
  ('PalacioDeportes', 10000),
  ('TeatroCentral', 1200);

-- Sample data for Espectaculo
INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES
  (1, 'Concierto Rock', 'Musical'),
  (2, 'Partido Baloncesto', 'Deportivo'),
  (3, 'Charla Educativa', 'Educativo');

-- Sample data for Evento
INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin) VALUES
  ('2024-07-01', 'PalacioDeportes', 1, 'Abierto', '2024-07-01'),
  ('2024-07-02', 'PalacioDeportes', 2, 'Abierto', '2024-07-02'),
  ('2024-07-10', 'TeatroCentral', 3, 'Abierto', '2024-07-10');

-- Sample data for Localidad
INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id) VALUES
  (1, '2024-07-01', 'PalacioDeportes', 1),
  (2, '2024-07-01', 'PalacioDeportes', 1),
  (1, '2024-07-02', 'PalacioDeportes', 2),
  (1, '2024-07-10', 'TeatroCentral', 3);

-- Sample data for TiposDeUsuarios
INSERT INTO TiposDeUsuarios (tipo_usuario) VALUES
  ('Jubilado'),
  ('Adulto'),
  ('Infantil'),
  ('Parado'),
  ('Bebe');

-- Sample data for Coste
INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio) VALUES
  (1, '2024-07-01', 'PalacioDeportes', 1, 'Adulto', 50),
  (2, '2024-07-01', 'PalacioDeportes', 1, 'Adulto', 45),
  (1, '2024-07-01', 'PalacioDeportes', 1, 'Jubilado', 30),
  (1, '2024-07-02', 'PalacioDeportes', 2, 'Adulto', 40),
  (1, '2024-07-10', 'TeatroCentral', 3, 'Adulto', 20);

-- Sample data for Espectaculo_TipoUsuario
INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) VALUES
  (1, 'Adulto'),
  (1, 'Jubilado'),
  (2, 'Adulto'),
  (3, 'Adulto'),
  (3, 'Infantil');

-- Sample Transaccion
INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
VALUES ('1234-5678-9012-3456', 'compra', 1, '2024-07-01', 'PalacioDeportes', 1, 'Adulto');

-- falla por evento no permite Bebe
INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
VALUES ('1234-5678-9012-3456', 'compra', 1, '2024-07-01', 'PalacioDeportes', 1, 'Bebe');


-- falla por misma localidad aun siendo distinto tipo de usuario
INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
VALUES ('9876-5432-1098-7654', 'compra', 1, '2024-07-01', 'PalacioDeportes', 1, 'Jubilado');
