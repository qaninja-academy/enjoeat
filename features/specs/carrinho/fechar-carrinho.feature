#language:pt

@green_food
Funcionalidade: Fechar carrinho
    Para eu possa ter certeza de que vou receber e pagar tudo certinho
    Sendo um usuário que adicionou itens
    Posso fechar o meu carrinho

    @total
    Cenario: Valor total e frete

        Dado que adicionei os seguintes itens no carrinho:
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fribas e muito saboroso.        | R$ 21,00 |
        Quando eu fecho o meu carrinho
        Então o valor total de itens deve ser igual a "R$ 35,90"
        E o valor do frete deve ser igual a "R$ 8,00"
        E o valor total da compra deve ser igual a "R$ 43,90"