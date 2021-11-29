CREATE DATABASE ROMAN;
GO 

USE ROMAN;
GO


CREATE TABLE tipoUsuario(
idTipoUsuario INT PRIMARY KEY IDENTITY(1,1),
tituloTipoUsuario VARCHAR(20) UNIQUE NOT NULL
);
GO

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY IDENTITY(1,1),
idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario),
email VARCHAR(200) UNIQUE NOT NULL,
senha VARCHAR(15) NOT NULL,
nomeUsuario VARCHAR(30) NOT NULL
);
GO

CREATE TABLE tema(
idTema INT PRIMARY KEY IDENTITY(1,1),
tituloTema VARCHAR(30) NOT NULL
);
GO

CREATE TABLE projeto(
idProjeto INT PRIMARY KEY IDENTITY(1,1),
idTema INT FOREIGN KEY REFERENCES tema (idTema),
idUsuario INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario),
nomeProjeto VARCHAR(40) NOT NULL,
descricao VARCHAR(350) NOT NULL
);
GO