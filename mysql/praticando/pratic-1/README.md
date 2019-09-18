**1)** Criar um banco de dados chamado projeto e conectar-se ao banco.<br/>
**2)** Criar a modelagem conforme o escopo abaixo:

<p>
  Sr. José quer modernizar a sua oficina, e por enquanto, cadastrar os carros que entram
  para realizar serviços e os seus respectivos donos. Sr. José mencionou que cada cliente
  possui apenas um carro. Um carro possui uma marca. Sr José também quer saber as cores
  dos carros para ter ideia de qual tinta comprar, e informa que um carro pode ter mais
  de uma cor. Sr. José necessita armazenar os telefones dos clientes, mas não quer que
  eles sejam obrigatórios.
</p>

###### Lógica:
<pre>
  <code>
  CLIENTE :
    - 1 CARRO :<br/>
          - 1 MARCA<br/>
          - MULTIPLAS CORES<br/>
    - MULTIPLOS TELEFONES (não obrigatórios)<br/>
  </pre>
</code>
