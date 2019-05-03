# example-httparty
 Exemplo de uso de HttParty para teste de API. 

Este repositório tem como objetivo ser meu campo de treinamento e estudo de HTTParty. (ad infinitum em construção... ).

Peguei a API https://jsonplaceholder.typicode.com e desenvolvi a automação do endpoint `/posts` testando os verbos/chamadas e o contrato.

 #Pré-condições:
 - Ruby instalado.

 # Usar projeto como exemplo:
 - Clonar projeto:
 ```
 git clone https://github.com/marciovrl/example-httparty.git
 ```

 - Instalar dependencias:
```
bundle install
```

- Executar toda suite de testes:
```
cucumber -t ~@notRun
```

- Executar testes por tag:
```
cucumber -t @<TAG> -t ~@notRun
```

# Começar projeto do zero:
- Criar estrutura de pastas:
```
cucumber --init
```

- Criar arquivo de configuração das dependencias:
```
bundle init
```

- Adicionar dependencias no arquivo `Gemfile`:
```
gem 'cucumber'
```

```
gem 'httparty'
```

```
gem 'rspec'
```

- Instalar dependencias:
```
bundle install
```

- Pronto. Agora só criar os teste e executar `cucumber`.

# Estrutura do projeto.
```
|
| - features
    | - pages
        | - example.page.rb
    | - specifications
        | - example.feature
    | - step_definitions
        | - example.step.rb
    | - support
        | - env.rb
| - .gitignore
| - Gemfile
| - README.md
```