#S206 L1
## _Passo a passo de como executar o projeto:_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://github.com/alinepmarcondes/S206L1/new/master/aula_karate/src/test/java/aula_inatel/trabalho2)

- 1- Adicionar dependência no pom.xml:
```sh 
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.1.0</version>
    <scope>test</scope>
</dependency>
```

- 2- Digitar comando no diretório do pom.xml:
```sh
mvn clean install
```

- 3- Executar projeto:
```sh
mvn test -Dtest=trabalhoRunner
```

## Passo a passo de como acessar o relatório de testes:
- 1- Localize o arquivo html gerado na pasta "karate-reports" com o nome "trabalho2" e abra no seu navegador.
