CREATE DATABASE dbProjetoMuvi; 
USE dbProjetoMuvi;


CREATE TABLE tbGestor(
        idGestor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        passwordGestor VARCHAR(16) NOT NULL , 
        emailGestor  VARCHAR(60) NOT NULL,
	cpfGestor CHAR(11) NOT NULL
        --Foreign telefoneGestor
);

CREATE TABLE tbTelGestor(
        idTelefone INT NOT NULL NOT NULL PRIMARY KEY ,   
        numeroPessoalTelefone CHAR(14),
        numeroEmpresarialTelefone CHAR(14) NOT NULL,
        numeroFixoTelefone CHAR(13)
);

CREATE TABLE tbShopping(
        idShopping INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        cnpjShopping CHAR(11) NOT NULL
        -- Foreign key para conectar com a localização
        -- Foreign key para conectar com o gestor
);

CREATE TABLE tbEnderecoShopping(
        idEnderecoShopping INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        numeroShopping INT, -- Local
        logradouroShopping VARCHAR(40),
        bairroShopping VARCHAR(40),
        cidadeShopping VARCHAR(40),
        estadoShopping VARCHAR(40)
        cepShopping VARCHAR(15) NOT NULL
);


CREATE TABLE tbSetor(
        idSetor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        nomeSetor VARCHAR(40),
        quantidadeSetores INT 
        -- Foreign key para conectar com tbSensorShopping      
);


CREATE TABLE tbSensorShopping(
        idSensor INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
        modeloSensor  VARCHAR(40) NOT NULL, 
        numeroSerieSensor VARCHAR(40) NOT NULL,
        quantidadePessoasSensor INT
);

CREATE TABLE tbQtdSetor(
        idQtdSetor INT NOT NULL PRIMARY KEY  AUTO_INCREMENT
        -- FOREIGN no idSetor
        -- FOREIGN no quantidadesSensores
        -- FOREIGN no quantidadePessoasSensor
);
