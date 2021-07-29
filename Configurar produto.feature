# language: pt


Funcionalidade: configurar produto
Como cliente da EBAC-SHOP
Quero configurar os detalhes do meu pedido de acordo com minha preferencia, tamanho e quantidade.
Para que após a confuguração consiga adicionar ao carrinho, já com minhas preferencias definidas.

Contexto:
Dado que esteja autenticado na plataforma Ebac-SHOP

Cenário: Válidar que as Seleções de cor, tamanho e quantidade devem ser obrigatórios.
Quando escolher o produto
E somente quando definir cor, tamanho e quantidade
Então eu consiga adicionar o produto ao carrinho.

Cenário: Validar no maximo 10 produtos por venda
Quando tentar comprar 10 ou menos produtos em uma unica compra
Então seja possivel realizar a compra.

Cenário: Válidar o botão limpar
Quando as seleções estiverem selecionadas
E eu queira limpar as seleções
Então ao clicar no botão limpar deve voltar ao estado original.