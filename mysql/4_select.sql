

/* RETORNA DATA E HORA DO BANCO */
SELECT NOW();

/*ALIAS DE COLUNAS, DAR NOME PARA UMA COLUNA*/
SELECT 'FERNANDO'

/* RETORNA ALGUMAS COLUNAS */
SELECT NOME, SEXO, EMAIL FROM CLIENTE;

/* RETORNA TODAS COLUNAS */
SELECT * FROM CLIENTE;

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

-- ==================================================
--  GROUP BY - FIM
-- ==================================================