CREATE DATABASE SistemaControleClientes;

USE SistemaControleClientes;

CREATE TABLE estado (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NULL,
  `sigla` VARCHAR(2) NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX sigla_UNIQUE (sigla ASC)
) ENGINE = InnoDB;

CREATE TABLE cidade (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NULL,
  `estado_id` INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_cidade_estado (estado_id ASC),
  CONSTRAINT fk_cidade_estado
    FOREIGN KEY (estado_id)
    REFERENCES estado (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE cliente (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sobrenome` VARCHAR(45) NULL,
  `dataNascimento` DATETIME NULL,
  `cpf` VARCHAR(414) NULL,
  `email` VARCHAR(60) NULL,
  `logradouro` VARCHAR(50) NULL,
  `numero` VARCHAR(6) NULL,
  `bairro` VARCHAR(30) NULL,
  `cep` VARCHAR(9) NULL,
  `cidade_id` INT NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX cpf_UNIQUE (cpf ASC),
  INDEX fk_cliente_cidade (cidade_id ASC),
  CONSTRAINT fk_cliente_cidade
    FOREIGN KEY (cidade_id)
    REFERENCES cidade (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE = InnoDB;


