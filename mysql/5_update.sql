

---------------------------------------------------
-- INIT - 001 : SEM MODELAGEM FORA DA CONVENSÃO
--------------------------------------------------
SELECT NOME, SEXO, EMAIL FROM CLIENTE;

-- UPDATE SEMPRE COM CLAUSULA WHERE

/*
MARIA ESTA COM SEXO = M
ALTERAR PARA F
*/
UPDATE CLIENTE
SET SEXO = "F"
WHERE NOME = "MARIA";

/* CORRIGINDO NOME VRONICA PARA VERONICA */
UPDATE CLIENTE
SET NOME = "VERONICA"
WHERE EMAIL = "VERA@BOL.COM";

---------------------------------------------------
-- END - 001
---------------------------------------------------

---------------------------------------------------
-- INIT - 002 : COM MODELAGEM DENTRO DA CONVENSÃO
---------------------------------------------------
UPDATE CLIENTE
SET CPF ='99754-7'
WHERE IDCLIENTE = 5;
---------------------------------------------------
-- END - 002
--------------------------------------------------