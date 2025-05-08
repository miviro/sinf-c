DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE `mydb`;
USE `mydb`;

CREATE TABLE `Cliente` (
  `datos_bancarios` varchar(255) PRIMARY KEY
);

CREATE TABLE `Transaccion` (
  `id_transaccion` int PRIMARY KEY AUTO_INCREMENT,
  `datos_bancarios` varchar(255) NOT NULL,
  `estado` ENUM ('compra', 'reserva', 'anulada') NOT NULL,
  `ubicacion` int NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `recinto_id` varchar(255) NOT NULL,
  `espectaculo_id` int NOT NULL,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL
);

CREATE TABLE `Recinto` (
  `id_nombre` varchar(255) PRIMARY KEY,
  `aforo_max` int NOT NULL COMMENT 'Mayor que 0'
);

CREATE TABLE `Evento` (
  `fecha` varchar(255),
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  `estado` ENUM ('Finalizado', 'Abierto', 'Cerrado') NOT NULL,
  `fecha_fin` varchar(255) NOT NULL,
  PRIMARY KEY (`fecha`, `recinto_id`, `espectaculo_id`)
);

CREATE TABLE `Espectaculo` (
  `id_espectaculo` int PRIMARY KEY,
  `nombre` varchar(255) NOT NULL,
  `tipo` ENUM ('Deportivo', 'Musical', 'Educativo')
);

CREATE TABLE `Localidad` (
  `ubicacion` int COMMENT 'mayor que 0',
  `fecha` varchar(255),
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  PRIMARY KEY (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`)
);

CREATE TABLE `TiposDeUsuarios` (
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') PRIMARY KEY
);

CREATE TABLE `Coste` (
  `ubicacion` int,
  `fecha` varchar(255),
  `recinto_id` varchar(255),
  `espectaculo_id` int,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'),
  `precio` int NOT NULL,
  PRIMARY KEY (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`, `tipo_usuario`)
);

CREATE TABLE `Espectaculo_TipoUsuario` (
  `espectaculo_id` int NOT NULL,
  `tipo_usuario` ENUM ('Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe') NOT NULL,
  PRIMARY KEY (`espectaculo_id`, `tipo_usuario`)
);

CREATE UNIQUE INDEX `Transaccion_index_0` ON `Transaccion` (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Transaccion` ADD FOREIGN KEY (`datos_bancarios`) REFERENCES `Cliente` (`datos_bancarios`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`recinto_id`) REFERENCES `Recinto` (`id_nombre`);

ALTER TABLE `Evento` ADD FOREIGN KEY (`espectaculo_id`) REFERENCES `Espectaculo` (`id_espectaculo`);

ALTER TABLE `Transaccion` ADD FOREIGN KEY (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`) REFERENCES `Localidad` (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Localidad` ADD FOREIGN KEY (`fecha`, `recinto_id`, `espectaculo_id`) REFERENCES `Evento` (`fecha`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Coste` ADD FOREIGN KEY (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`) REFERENCES `Localidad` (`ubicacion`, `fecha`, `recinto_id`, `espectaculo_id`);

ALTER TABLE `Coste` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `TiposDeUsuarios` (`tipo_usuario`);

ALTER TABLE `Transaccion` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `TiposDeUsuarios` (`tipo_usuario`);

ALTER TABLE `Espectaculo_TipoUsuario` ADD FOREIGN KEY (`tipo_usuario`) REFERENCES `TiposDeUsuarios` (`tipo_usuario`);

ALTER TABLE `Espectaculo_TipoUsuario` ADD FOREIGN KEY (`espectaculo_id`) REFERENCES `Espectaculo` (`id_espectaculo`);

ALTER TABLE `Transaccion` ADD FOREIGN KEY (`espectaculo_id`, `tipo_usuario`) REFERENCES `Espectaculo_TipoUsuario` (`espectaculo_id`, `tipo_usuario`);
