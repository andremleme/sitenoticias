create database if not exists  Noticias;
use Noticias;

create table if not exists Usuario(
	idUsuario int not null auto_increment,
	nome varchar(60) not null,
	login varchar(60) not null,
	email varchar(60) not null,
	senha varchar(20) not null,
	primary key (idUsuario)
);

create table if not exists Perfil(
	idPerfil int not null auto_increment,
	cargo varchar(60) not null,
	idUsuario int not null,
	primary key(idPerfil),
	foreign key (idPerfil) references Usuario(idUsuario)
);

create table if not exists Noticia(
	idNoticia int not null auto_increment,
	titulo varchar(30) not null,
	dataPostagem datetime not null,
	conteudo  text not null,
	visualizacoes int,
	autor int not null,
	primary key(idNoticia),
	foreign key (autor) references Usuario (idUsuario)
);


select * from Usuario;
select * from Perfil;
select * from Noticia;
