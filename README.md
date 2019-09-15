# Database

* Querys em banco de dados

### MySql
### SqlServer
### Oracle

-----------------------------------------------------------
## Modelagem

#### 1º FORMA NORMAL

  1 - TODO CAMPO VETORIZADO SE TORANRÁ OUTRA TABELA <br/>
    [AZUL, AMARELO, VERDE, VERMELHO]<br/>
    [KA, FIR, CIVIC, FIESTA]<br/>

  2 - TODO CAMPO MULTIVALORIZADO SE TORNARÁ OUTRA TABELA<br/>
  "RUA MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ"<br/>

  3 -  TODA TABELA NECESSITA DE PELO MENOS UM CAMPO  QUE
  IDENTIFIQUE TODO O REGISTRO COMO SENDO UNICO - CHAMAMOS
  DE CHAVE PRIMARIA OU PRIMARY KEY


####  CARDINALIDADE
- (1,1)
- (0,1)
- (1,n)
- (0,n)

###### PRIMEIRO ALGARISMO - OBRIGATORIEDADE
0 - NÃO OBRIGATÓRIO<br/>
1 - OBRIGATÓRIO<br/>

###### SEGUNDO ALGARISMO - OBRIGATORIEDADE
1 - MAXÍMO DE UM<br/>
N - MAIS DE UM<br/>

###### FOREIGN -KEY:
<p>RELACIONAMENTOS  1 X 1 a chave fica na tabela mais
fraca (nesse caso para criar um endereco deve-se
ter um cliente tonando endereco a tabela fraca)</p>
<p>
RELACIONAMENTOS  1 X N, a chave estrangeira
ficará sempre na tabela N.</p>

-----------------------------------------------------------