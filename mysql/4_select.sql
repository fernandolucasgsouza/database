

---------------------------------------------------
-- INIT - 001 : SEM MODELAGEM FORA DA CONVENSÃO
---------------------------------------------------

/* RETORNAR DATA E HORA DO BANCO */
SELECT NOW();

/*ALIAS DE COLUNAS, DAR NOME PARA UMA COLUNA*/
SELECT 'FERNANDO'

/* RETORNAR ALGUMAS COLUNAS */
SELECT NOME, SEXO, EMAIL FROM CLIENTE;

/* RETORNAR TODAS COLUNAS */
SELECT * FROM CLIENTE;

/* RETORNAR EMAILS NULOS */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE EMAIL IS NULL;

/* RETORNAR EMAILS NÃO NULOS */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE EMAIL IS NOT NULL;



-- ==================================================
--  FILTRANDO  COM WHERE E LIKE - INICIO
-- ==================================================

  /* WHERE */
  SELECT NOME, ENDERECO  FROM CLIENTE
  WHERE SEXO = 'N';

  /* LIKE = OBS: INIMIGO DA PERFORMACE*/
  SELECT NOME, ENDERECO  FROM CLIENTE
  WHERE ENDERECO LIKE '%RJ';

  SELECT NOME, ENDERECO  FROM CLIENTE
  WHERE ENDERECO LIKE '%CENTRO%';

-- ==================================================
--  FILTRANDO  COM WHERE E LIKE - FIM
-- ==================================================



-- ==================================================
--  FILTRANDO TABELA VERDADE INICIO
-- ==================================================
/*
----------------------------
   A   B   A ou B  A e B
   V   V     V       V
   V   F     V       F
   F   V     V       F
   F   F     F       F
*===========================/

  /*OR - OU */
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'M' OR ENDERECO LIKE '%RJ';

  /*
  SEXO FEMININO OU MORA NO RIO JANEIRO
    - 70% sexo femino
    - 30% mora RJ
    - 1º checo o sexo e depois a cidade
  */
  SELECT NOME, SEXO, ENDERECO
  FROM CLIENTE WHERE SEXO = "F"
  OR ENDERECO LIKE "%RJ";

  /*AND - E */
  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'M' AND ENDERECO LIKE '%MG';

  SELECT NOME, SEXO, ENDERECO FROM CLIENTE
  WHERE
  SEXO = 'F' AND ENDERECO LIKE '%ESTACIO%';

  /*
  SEXO FEMININO E MORA NO RIO JANEIRO
    - 70% sexo femino
    - 30% mora RJ
    - 1º checo cidade e depois o sexo
  */
  SELECT NOME, SEXO, ENDERECO
  FROM CLIENTE WHERE ENDERECO LIKE "%RJ"
  AND SEXO = "F";

-- ==================================================
--  FILTRANDO TABELA VERDADE FIM
-- ==================================================



-- ==================================================
--  COUNT - INICIO
-- ==================================================
  SELECT COUNT(*) FROM  CLIENTE;
  SELECT COUNT(*) AS "QUANTIDADE REGISTRO" FROM  CLIENTE;

  /* CONTAR EMAILS NULOS*/
  SELECT COUNT(*), "QUANTIDADE" FROM CLIENTE
  WHERE EMAIL IS NULL;
-- ==================================================
--  COUNT - FIM
-- ==================================================


-- ==================================================
--  GROUP BY - INICIO
-- ==================================================

  /* AGRUPAMENTO POR SEXO*/
  SELECT SEXO, COUNT(*) AS "QUANTIDADE"
  FROM CLIENTE
  GROUP BY(SEXO);

  /* CONTAR EMAILS NULOS E AGRUPAR POR SEXO */
  SELECT SEXO, COUNT(*), "QUANTIDADE"
  FROM CLIENTE
  WHERE EMAIL IS NULL
  GROUP BY (SEXO);

-- ==================================================
--  GROUP BY - FIM
-- ==================================================

---------------------------------------------------
-- END - 001 : SEM MODELAGEM FORA DA CONVENSÃO
---------------------------------------------------


---------------------------------------------------
-- INIT - 002 : COM MODELAGEM DENTRO DA CONVENSÃO
---------------------------------------------------

/* JUNCAO [FOMA ERRADA]*/
/* NOME, SEXO, BAIRRO, CIDADE, DATA */
SELECT NOME, SEXO, BAIRRO, CIDADE, NOW() AS "DATA"
FROM CLIENTE, ENDERECO
WHERE IDCLIENTE = ID_CLIENTE; /* SELECAO */

SELECT NOME, SEXO, BAIRRO, CIDADE, NOW() AS "DATA"
FROM CLIENTE, ENDERECO
WHERE IDCLIENTE = ID_CLIENTE
AND BAIRRO = 'CENTRO';

/* JUNCAO [FOMA CERTA] */
/* JOIN  -  PERFORMATICO */
SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE BAIRRO = 'CENTRO';

SELECT NOME, SEXO, BAIRRO, CIDADE, NOW() AS "DATA"
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE BAIRRO = 'CENTRO';

/* JOIN - TABELA SEM APELIDO */
SELECT CLIENTE.NOME, CLIENTE.SEXO,
ENDERECO.BAIRRO, ENDERECO.CIDADE,
TELEFONE.TIPO, TELEFONE.DDD, TELEFONE.TELEFONE
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

/* JOIN - TABELA COM APELIDO */
SELECT C.NOME, C.SEXO,
E.BAIRRO, E.CIDADE,
T.TIPO, T.DDD, T.TELEFONE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/* JOIN - TABELA COM APELIDO */
/* ONDE SEXO IGUAL m*/
SELECT C.NOME, C.SEXO,
E.BAIRRO, E.CIDADE,
T.TIPO, T.DDD, T.TELEFONE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

---------------------------------------------------
-- END - 002
---------------------------------------------------