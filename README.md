[![Ruby](https://github.com/David-Nascimento/unit-testes-ruby/actions/workflows/ruby.yml/badge.svg)](https://github.com/David-Nascimento/unit-testes-ruby/actions/workflows/ruby.yml)

# Estória do Usuário

> Qualidade de Software começa na especificação

#### Voce foi contratado para trabalhar no Ninja Bank(Uma startUp que vai concorrer com o nuBank)

> O diferencial desta startup é que ela terá uma rede própria de atendimento por caixas eletrônicos.

#### Seu PO, Analista de Negôcios ou Cliente envia para você um email solicitando e explicando como funciona o saque do banco:

## Veja a seguinte stória de usuário:
Estória: Saque no Caixa Eletrônico
```
Sendo um cliente que é correntista do Ninja Bank
Posso sacar dinheiro
Para que eu consiga comprar em lugares que não aceitam débito ou crédito
```

#### Existem 3 pontos chavez que são fundamentais nas estórias de usúarios, são eles:
    1. Para quem? Para quem estamos desenvolvendo a funcionalidade.
    2. O que Uma? descrição resumida da funcionalidade em si.
    3. Por que? O motivo pelo qual o cliente precisa desta funcionalidade. Se é possível citando o ganho de negócio.

#### Normalmente para responder as três perguntas citadas acima nós usamos o SENDO...POSSO...PARA QUE...

***Beleza, mas como testar?***

Para isto podemos usar a técnica de BDD(Behavior Driven Development) de Dan North, onde as palavras chave Dado que... Quando... Então... nos apoiam na criação de ricos cenários de teste.

Vejam exemplos abaixo:
```
Cenário: Saque em conta corrente
    
    Dado que eu tenho R$ 1000 em minha conta corrente
    Quando faço um saque de R$ 200
    Então meu saldo final deve ser R$ 800
```

> Repare que no cenário anterios nós usamos o "Dado que" para indicar o cenário atual, o quando para indicar a cação do usuario, e o "Então" para indicar como o software vai reagir, Podemos também usar o "E" e o "MAS" para criar cenários de teste ainda mais ricos.

```
Cenário: Deu ruimnão tenho saldo

    Dado que eu tenho R$ 0 em minha conta corrente
    Quando eu faço um saque de R$ 100
    Então vejo a mensagem "Saldo insuficiente para o saque :("
```

```
Cenário: Tenho saldo mas não o suficiente

    Dado que eu tenho R$ 500 em imnha conta corrente
    Quando faço um saque de R$ 501
    Então vejo a mensagem "Saldo insuficiente para saque :("
```

```
Cenário: Limite por saque :(

    Dado que eu tenha R$ 1000 em minha conta corrente
    Quando faço um saque de R$ 701
    Então vejo a mensagem "Limite máximo por saque é de R$ 700"
    E meu saldo final deve ser R$ 1000
```

_Créditos_ : Qa Ninja
