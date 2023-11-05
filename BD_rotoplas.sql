CREATE DATABASE BD_Rotoplas;

USE [BD_Rotoplas];

CREATE TABLE Productos
(
	idProducto int primary key IDENTITY(0,1),
	Nombre varchar(30) NOT NULL,
	Precio float NOT NULL,
	Descripcion varchar(100) NULL,
	Stock int NOT NULL,
	idCategoria int NOT NULL
);

CREATE TABLE Categorias
(
	idCategoria int primary key IDENTITY(1, 1),
	Nombre varchar(30) NOT NULL,
	Descripcion varchar(50)
);

CREATE TABLE Cursos
(
	idCurso int primary key IDENTITY(1, 1),
	Nombre varchar(30) NOT NULL,
	Precio float NOT NULL,
	DuracionHoras float NOT NULL,
	Descripcion varchar(100) NOT NULL,
	idCategoriaCurso int NOT NULL
);

CREATE TABLE CategoriasCursos
(
	idCategoriaCurso int primary key IDENTITY(1, 1),
	Nombre varchar(30) NOT NULL,
	Descricion varchar(100) NOT NULL
);

CREATE TABLE Cliente
(
	idCliente int primary key IDENTITY(1, 1),
	Nombre varchar(25) NOT NULL,
	Direccion varchar(255) NULL,
	Telefono varchar(30) NULL,
	Email varchar(100) NOT NULL,
	Edad int NULL,
	Genero varchar(10),
	MetodoPago varchar(10),
);

CREATE TABLE Administrador
(
	idAdministrador int primary key IDENTITY(1, 1),
	Nombre varchar(50) NOT NULL,
	Edad int NULL,
	Rol varchar(30) NOT NULL,
	Email varchar(100) NOT NULL
);