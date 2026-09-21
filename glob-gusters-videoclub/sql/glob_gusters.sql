-- Base de datos relacional  Glob-Gusters Video-Club
-- Autor: Brian Blanco Chamorro
-- Fecha: 14/09/2026

-- creacion de base de datos
CREATE DATABASE IF NOT EXISTS `glob_gusters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `glob_gusters`;
 
-- Eliminación de la base de datos
-- DROP DATABASE IF EXISTS `glob_gusters`;
 
 CREATE TABLE IF NOT EXISTS Nacionalidad (
  NacionalidadID int PRIMARY KEY,
  Nombre varchar(250) NOT NULL
);


CREATE TABLE IF NOT EXISTS Actor (
  ActorID int PRIMARY KEY,
  Nombre varchar(250) NOT NULL,
  Sexo varchar(20) NOT NULL,
  NacionalidadID int,
  FOREIGN KEY (NacionalidadID) REFERENCES Nacionalidad(NacionalidadID)
);
