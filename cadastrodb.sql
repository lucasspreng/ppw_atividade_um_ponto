CREATE DATABASE cadastro_clientes;

USE cadastro_clientes;

CREATE TABLE estado (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NULL,
sigla VARCHAR(2) NULL,
PRIMARY KEY (id),
UNIQUE INDEX sigla_UNIQUE (sigla ASC)
) ENGINE = InnoDB;

CREATE TABLE cidade (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NULL,
id_estado INT NOT NULL,
PRIMARY KEY (id),
INDEX fk_cidade_estado (id_estado ASC),
CONSTRAINT fk_cidade_estado
FOREIGN KEY (id_estado)
REFERENCES estado (id)
ON DELETE RESTRICT
ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE cliente (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NULL,
sobrenome VARCHAR(45) NULL,
dataNascimento DATETIME NULL,
cpf VARCHAR(14) NULL,
email VARCHAR(60) NULL,
logradouro VARCHAR(50) NULL,
numero VARCHAR(6) NULL,
bairro VARCHAR(30) NULL,
cep VARCHAR(9) NULL,
id_cidade INT NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX cpf_UNIQUE (cpf ASC),
INDEX fk_cliente_cidade (id_cidade ASC),
CONSTRAINT fk_cliente_cidade
FOREIGN KEY (id_cidade)
REFERENCES cidade (id)
ON DELETE RESTRICT
ON UPDATE CASCADE
) ENGINE = InnoDB;