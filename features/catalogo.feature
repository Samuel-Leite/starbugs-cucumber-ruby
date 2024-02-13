#language: pt

Funcionalidade: Catálogo de cafés
    Como usuário da plataforma, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenario: Acessar o catálogo de cafés na página principal

    Quando acesso a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis

Cenario: Comprar um café

    Dado que estou na página principal da Starbugs
        E que deseja comprar o seguinte produto:
        | name     | Expresso Gelado  |
        | price    | R$ 9,99          |
        | delivery | R$ 10,00         |
    Quando inicio a compra desse item
    Então ira visualizar a pagina de checkout com os detalhes do produto
        E o valor total da compra deve ser "R$ 19,99"

Cenario: Café indisponível

    Dado que estou na página principal da Starbugs
        E que deseja comprar o seguinte produto:
        | name     | Expresso Cremoso |
    Quando inicio a compra desse item
    Então ira visualizar popup que o produto está indisponível