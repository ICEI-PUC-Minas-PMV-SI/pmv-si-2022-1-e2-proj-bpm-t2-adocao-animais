-- Criar o banco de dados
CREATE DATABASE adocao_animais;

-- Criar a tabela adotante
CREATE TABLE adotante (
    id_adotante int (11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome varchar(40),
    telefone varchar (11),
    rua varchar(60),
    numero varchar (4),
    cidade varchar(50),
    estado varchar (2),
    bairro varchar(8),
    CEP varchar (35)
);

-- Criar tabela doador
CREATE TABLE doador (
	id_doador int (11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome varchar(40),
    telefone varchar (11),
    rua varchar(60),
    numero varchar (4),
    cidade varchar(50),
    estado varchar (2),
    bairro varchar(8),
    CEP varchar (35)
);

-- Criar tabela raça
 CREATE TABLE raca (
	id_raca int (11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    raca varchar(15),
    especie varchar (15)
);

-- Criar tabela animal
CREATE TABLE animal (
id_animal INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_raca INT NOT NULL,
	FOREIGN KEY (id_raca) REFERENCES raca(id_raca),
    	nome VARCHAR (20),
    	sexo VARCHAR (1),
    	cor  VARCHAR (15),
    	data_nascimento DATE,
    	indicador_vacinacao VARCHAR (1),
    	indicador_castracao VARCHAR (1),
    	indicador_vermifugacao VARCHAR (1),
    	condicao_saude VARCHAR(100),
    	temperamento VARCHAR(30),
    	id_doador INT NOT NULL,
   	 FOREIGN KEY (id_doador) REFERENCES doador(id_doador)
);

-- Criar tabela adocao
CREATE TABLE adocao (
	id_adocao int (11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_animal INT NOT NULL,
    	FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
    	id_adotante INT NOT NULL,
	FOREIGN KEY (id_adotante) REFERENCES adotante(id_adotante),
    	data_adocao DATE,
    	termo_reponsabilidade BLOB
);