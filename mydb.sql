CREATE TABLE `Cliente` (
  `datos_bancarios` string PRIMARY KEY
);

CREATE TABLE `Transaccion` (
  `id_transaccion` int PRIMARY KEY AUTO_INCREMENT,
  `datos_bancarios` string NOT NULL,
  `estado` ENUM ('compra', 'reserva', 'anulada') NOT NULL,
  `ubicacion` int NOT NULL,
  `fecha_id` timestamp NOT NULL,
  `recinto_id` varchar(255) NOT NULL,
  `espectaculo_id` int NOT NULL,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL
);

CREATE TABLE `Recinto` (
  `id_nombre` varchar(255) PRIMARY KEY,
  `aforo_max` int NOT NULL COMMENT 'Mayor que 0'
);

CREATE TABLE `Evento` (
  `fecha` timestamp,
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  `estado` ENUM ('Finalizado', 'Abierto', 'Cerrado') NOT NULL,
  `fecha_fin` timestamp NOT NULL,
  PRIMARY KEY (`fecha`, `recinto_id`, `espectaculo_id`)
);

CREATE TABLE `Espectaculo` (
  `id_espectaculo` int PRIMARY KEY,
  `nombre` string NOT NULL,
  `tipo` ENUM ('Deportivo', 'Musical', 'Educativo')
);

CREATE TABLE `Localidad` (
  `ubicacion` int COMMENT 'mayor que 0',
  `fecha_id` timestamp,
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  `estado` ENUM ('Reservado', 'Libre', 'Prereservado') NOT NULL,
  PRIMARY KEY (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`)
);

CREATE TABLE `TiposDeUsuarios` (
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') PRIMARY KEY
);

CREATE TABLE `Coste` (
  `ubicacion` int,
  `fecha_id` timestamp,
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'),
  `precio` int NOT NULL,
  PRIMARY KEY (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`, `tipo_usuario`)
);

CREATE TABLE `Espectaculo_TipoUsuario` (
  `espectaculo_id` int NOT NULL,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL,
  PRIMARY KEY (`espectaculo_id`, `tipo_usuario`)
);

CREATE UNIQUE INDEX `Transaccion_index_0` ON `Transaccion` (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Transaccion` ADD FOREIGN KEY (`datos_bancarios`) REFERENCES `Cliente` (`datos_bancarios`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`recinto_id`) REFERENCES `Recinto` (`id_nombre`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`espectaculo_id`) REFERENCES `Espectaculo` (`id_espectaculo`);

ALTER TABLE `Localidad` ADD FOREIGN KEY (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`) REFERENCES `Transaccion` (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Coste` ADD FOREIGN KEY (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`) REFERENCES `Localidad` (`ubicacion`, `fecha_id`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `TiposDeUsuarios` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `Coste` (`tipo_usuario`);

ALTER TABLE `TiposDeUsuarios` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `Transaccion` (`tipo_usuario`);

ALTER TABLE `Espectaculo_TipoUsuario` ADD FOREIGN KEY (`espectaculo_id`) REFERENCES `Espectaculo` (`id_espectaculo`);

ALTER TABLE `TiposDeUsuarios` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `Espectaculo_TipoUsuario` (`tipo_usuario`);

ALTER TABLE `Espectaculo_TipoUsuario` ADD FOREIGN KEY (`espectaculo_id`, `tipo_usuario`) REFERENCES `Transaccion` (`espectaculo_id`, `tipo_usuario`);
