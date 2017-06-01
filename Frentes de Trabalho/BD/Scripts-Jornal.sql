drop database if exists Jornal;
CREATE DATABASE IF NOT EXISTS Jornal;
USE Jornal;

CREATE TABLE IF NOT EXISTS Professor (
  ProntuarioProfessor CHAR(8) PRIMARY KEY NOT NULL,
  Nome 		 VARCHAR(200),
  Email		 VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS Aluno (
  ProntuarioAluno CHAR(8) NOT NULL PRIMARY KEY ,
  Nome     VARCHAR(200),
  Email    VARCHAR(100),
  Celular  VARCHAR(14),
  Senha    VARCHAR(12) default 'ifsp1234'
);

CREATE TABLE IF NOT EXISTS Materia (
  idMateria   INT PRIMARY KEY auto_increment,
  Disciplina  VARCHAR(100),
  Periodo	  VARCHAR(40),
  DiaSemana   VARCHAR(30)
);


CREATE TABLE IF NOT EXISTS Administradoras (  
	Prontuario  CHAR(8) NOT NULL, 
	Nome   	    VARCHAR(20) NOT NULL PRIMARY KEY,
	Email       VARCHAR(40) ,
	Celular	    VARCHAR(14),
    senha       VARCHAR(5000) not null
);

CREATE TABLE IF NOT EXISTS Noticias (
  idNoticia   		INT AUTO_INCREMENT not null,
  Titulo      		VARCHAR(150) NOT NULL,
  DataPublicacao    datetime,
  Texto 	  		VARCHAR(10000),
  idMateria   		INT,
  Administradoras_Nome VARCHAR(20) NOT NULL,
  Materia_idMateria    int ,
		primary key(idNoticia, Administradoras_Nome, Materia_idMateria),  
    FOREIGN KEY (idMateria) REFERENCES Materia (idMateria), 
	FOREIGN KEY (Administradoras_Nome) REFERENCES Administradoras (Nome)
);


CREATE TABLE IF NOT EXISTS Materia_Aluno (
  idMateria       INT not null,
  ProntuarioAluno char(8) not null,
  PRIMARY KEY (idMateria, ProntuarioAluno ),
	FOREIGN KEY (idMateria)  REFERENCES Materia (idMateria),
    FOREIGN KEY (ProntuarioAluno) REFERENCES Aluno (ProntuarioAluno)
    On delete cascade 
);

CREATE TABLE IF NOT EXISTS Materia_Professor(
    idMateria              INT,
	ProntuarioProfessor    CHAR(8),
    PRIMARY KEY(idMateria, ProntuarioProfessor),
 	FOREIGN KEY (idMateria)  REFERENCES Materia (idMateria),
    FOREIGN KEY (ProntuarioProfessor) REFERENCES Professor (ProntuarioProfessor)
	On delete cascade 
); 

