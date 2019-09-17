
---------------------------------------------------
-- INIT - 001 : SEM MODELAGEM, FORA DA CONVENSÃO
---------------------------------------------------
/* USANDO BANCO */
USE PROJETO;

/* CRIANDO TABELA */
CREATE TABLE CLIENTE(
  NOME VARCHAR(150),
  SEXO CHAR(1),
  EMAIL VARCHAR(30),
  CPF INT (11),
  TELEFONE VARCHAR(30),
  ENDERECO VARCHAR(100)
);

/* VERIFICANDO A TABELA */
SHOW TABLES;

/* VER ESTRUTURA TABELA */
DESC CLIENTE;

---------------------------------------------------
-- END - 001
---------------------------------------------------

---------------------------------------------------
-- INIT - 002 : COM MODELAGEM, DENTRO DA CONVENSÃO
---------------------------------------------------
/*
*  FOREIGN -KEY:
*  RELACIONAMENTOS  1 X 1 a chave fica na tabela mais
*  fraca (nesse caso para criar um endereco deve-se
*  ter um cliente tonando endereco a tabela fraca)
*
*  RELACIONAMENTOS  1 X N, a chave estrangeira
*  ficará sempre na tabela N.
*/

USE COMERCIO;

CREATE TABLE CLIENTE(
  IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
  NOME VARCHAR(40) NOT NULL,
  CPF VARCHAR (15) UNIQUE,
  SEXO ENUM('M','F'),
  EMAIL VARCHAR(50) UNIQUE
);

CREATE TABLE TELEFONE(
  IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
  TIPO ENUM('CEL','RES', 'COM'),
  DDI VARCHAR(3),
  DDD VARCHAR(3),
  TELEFONE VARCHAR(10),
  ID_CLIENTE INT,
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE ENDERECO(
  IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
  ESTADO CHAR(2) NOT NULL,
  CIDADE VARCHAR (50) NOT NULL,
  BAIRRO VARCHAR (30) NOT NULL,
  RUA VARCHAR (50) NOT NULL,
  NUMERO INT NOT NULL,
  ID_CLIENTE INT UNIQUE,
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES CLIENTE(IDCLIENTE)
);


---------------------------------------------------
-- END  - 002
---------------------------------------------------