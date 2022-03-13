create database bdMuvi;

use bdMuvi;

create table Usuario (
	idUsuario int primary key auto_increment,
    login varchar (50),
    senha varchar (30)
);

create table Shopping (
	cnpjShopping int primary key auto_increment,
    nomeShopping varchar (50),
    qtdSetores int (2)
);

create table Gestor (
	idGestor int primary key auto_increment,
    nomeGestor varchar (50),
    cpfGestor char (11),
    foneGestor char (13),
    emailGestor varchar (50),
    fkShopping int,
    foreign key(fkShopping) references Shopping (cnpjShopping)
);

create table Setores (
	idSetores int primary key auto_increment,
    nomeSetor varchar (30),
    fkShopping int,
    foreign key(fkShopping) references Shopping (cnpjShopping)
);

create table Sensores (
	idSensores int primary key auto_increment,
    modeloSensores varchar (50),
    qtdPessoaSs int (8),
    fkSetores int,
    foreign key(fkSetores) references Setores (idSetores)
);

