create database bdMuvi;

use bdMuvi;

create table Usuario (
	idUsuario int primary key auto_increment,
    login varchar (50),
    senha varchar (30)
);

create table Shopping (
	idShopping int primary key auto_increment,
    cnpjShopping varchar (70),
    nomeShopping varchar (100),
	enderocoShopping varchar (100),
    qtdSetores int
);

create table Gestor (
	idGestor int primary key auto_increment,
    nomeGestor varchar (50),
    cpfGestor char (11),
    foneGestor char (13),
    emailGestor varchar (50),
    fkShopping int,
    foreign key(fkShopping) references Shopping (idShopping)
);

create table Setores (
	idSetores int primary key auto_increment,
    nomeSetor varchar (30),
    qtdSensores int,
    fkShopping int,
    foreign key(fkShopping) references Shopping (idShopping)
);

create table Sensores (
	idSensores int primary key auto_increment,
    modeloSensores varchar (50),
    qtdPessoas int,
    fkSetores int,
    foreign key(fkSetores) references Setores (idSetores),
    fkShopping int,
    foreign key(fkShopping) references Shopping (idShopping)
);

insert into Usuario values (null, 'usuario01@gmail.com', '12345'),
						   (null, 'usuario02@gmail.com', '123456'),
                           (null, 'usuario03@gmail.com', '1234567');
                           
select * from Usuario;

insert into Shopping values (null, '26928578000104', 'Shopping JK Iguatemi', 'Av. Pres. Juscelino Kubitschek, 2041', 2),
							(null, '22535922000136', 'Shopping Leste Aricanduva', 'Avenida Aricanduva, 5555', 2),
                            (null, '11506675000123', 'Shopping Cidade Jardim', 'Av. Magalhães de Castro, 12.000', 2);
                            
select * from Shopping;

insert into Gestor values (null, 'Elisa Clarice Aragão', '95915713807', '11989657860', 'gestor01@gmail.com', 1),
						  (null, 'Carla Sophie Nogueira', '43547365864', '11993680575', 'gestor02@gmail.com', 2),
                          (null, 'Bianca Jaqueline Viana', '06715878897', '11989542024', 'gestor03@gmail.com', 3);

select * from Gestor;

insert into Setores values (null, '1A', 1, 1),
						   (null, '2B', 1, 1),
                           (null, '1C', 1, 2),
                           (null, '2V', 1, 2),
                           (null, '1T', 1, 3),
                           (null, '2U', 1, 3);
                           
select * from Setores;

insert into Sensores values (null, 'CP500', 2000, 1, 1),
							(null, 'CP500', 1500, 2, 1),
                            (null, 'CP500', 2000, 3, 2),
                            (null, 'CP500', 1500, 4, 2),
                            (null, 'CP500', 2000, 5, 3),
                            (null, 'CP500', 1500, 6, 3);
                            
select * from Sensores;
