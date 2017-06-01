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

Insert into professor values
("1348115","Valdecir dos Ramos","valcizao@gmail.com"),
("1348114","Mirela Santos Lopes","mirelao@gmail.com"),
("1348113","Fernando Rodrigues Amarindo","fernandao@gmail.com");

Insert into aluno values
("1448115","Gustavo Sanchez","gusvatito@gmail.com","11976653478"),
("1448114","Vinicio Gomes","ocachorrao@gmail.com","11976653333"),
("1448113","Marquinho Dj","sampley@gmail.com","11976653478");

Insert into materia values
("Matematica","Noite","Segunda"),
("Geografia","Manhã","Quarta"),
("Filosofia","Tarde","Sexta");

Insert into administradoras values
("1548114","Lucilene Camargo","lulu@hotmail.com","11975538509","1234"),
("1548122","Roberto Lucio","robertolucio@hotmail.com","11975540009","1334"),
("1545612","Principe Cunha","forcaprincipe@bol.com.br","11975533459","1244");

Insert into noticias values
("Novo curso disponível!","01/03/2017","BLABLABLABLABLABLABLABLABLABLABLA","1","Lucilene Camargo"),
("Manifestações no Instituto","02/03/2017","BLABLABLABLABLABLABLABLABLABLA","2","Roberto Lucio"),
("Novo projeto elaborado","03/03/2017","BLABLABLABLABLABLABLABLABLA","3","Principe Cunha");

Insert into materia_aluno values
("1","1448115"),
("2","1448114"),
("3","1448113");

Insert into materia_professor values
("1","1348115"),
("2","1348114"),
("3","1348113");
