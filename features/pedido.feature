#language: pt

Funcionalidade: Pedidos
    Como um usuário do Starbugs, eu quero realizar selecionar  e comprar cafés
    Para que eu possa receber em meu endereço e efetuar o pagamento na entrega

Cenario: Compra bem sucedida
    Dado que estou na página principal da Starbugs
        E iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte CEP: "04534011"
        E informo os demais campos do endereço:
        | number  | 1000    |
        | details | Apto 22 |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra
    Então sou redirecionado para a página de confirmação de Pedidos
        E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"