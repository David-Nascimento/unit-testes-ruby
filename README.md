# Qualidade de Software começa na especificação

## Estória do Usuário

Você foi contratado para trabalhar no Ninja Bank (uma startUp que vai concorrer com o nuBank). O diferencial desta startup é que ela terá uma rede própria de atendimento por caixas eletrônicos.

Seu PO, Analista de Negócios ou Cliente envia para você um email solicitando e explicando como funciona o saque do banco:

Veja a seguinte história de usuário:

### Estória: Saque no Caixa Eletrônico

Sendo um cliente que é correntista do Ninja Bank, posso sacar dinheiro para que eu consiga comprar em lugares que não aceitam débito ou crédito.

Existem 3 pontos chave que são fundamentais nas histórias de usuários, são eles:

1. Para quem? Para quem estamos desenvolvendo a funcionalidade.
2. O que Uma? Descrição resumida da funcionalidade em si.
3. Por que? O motivo pelo qual o cliente precisa desta funcionalidade, se é possível citando o ganho de negócio.

Normalmente, para responder às três perguntas citadas acima, nós usamos o SENDO...POSSO...PARA QUE...

### Como testar?

Para isso, podemos usar a técnica de BDD (Behavior Driven Development) de Dan North, onde as palavras chave Dado que..., Quando... e Então... nos apoiam na criação de ricos cenários de teste.

Veja exemplos abaixo:

#### Cenário: Saque em conta corrente
```Cucumber    
Dado que eu tenho R$ 1000 em minha conta corrente
Quando faço um saque de R$ 200
Então meu saldo final deve ser R$ 800.
```

Repare que no cenário anterior, nós usamos o "Dado que" para indicar o cenário atual, o "Quando" para indicar a ação do usuário, e o "Então" para indicar como o software vai reagir. Podemos também usar o "E" e o "MAS" para criar cenários de teste ainda mais ricos.

#### Cenário: Deu ruim, não tenho saldo
```Cucumber 
Dado que eu tenho R$ 0 em minha conta corrente
Quando eu faço um saque de R$ 100
Qntão vejo a mensagem "Saldo insuficiente para o saque :(".
```
#### Cenário: Tenho saldo, mas não o suficiente
```Cucumber 
Dado que eu tenho R$ 500 em minha conta corrente
Quando faço um saque de R$ 501
Então vejo a mensagem "Saldo insuficiente para saque :(".
```
#### Cenário: Limite por saque :(
```Cucumber
Dado que eu tenho R$ 1000 em minha conta corrente
Quando faço um saque de R$ 701
Então vejo a mensagem "Limite máximo por saque é de R$ 700" e meu saldo final deve ser R$ 1000.
```

