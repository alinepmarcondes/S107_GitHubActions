Feature: Testando API Go Rest.

Background: Executa antes de cada teste
    * def url_base = 'https://jsonplaceholder.typicode.com'

Scenario: Testando retorno /comments e verificando seu tipo.
    Given url url_base
    And path '/comments'
    When method get
    Then status 200
    And match $ == '#[]'
    And match $ == '#[500]'
    And match each $ contains {email: '#string', postId: '#number'}

Scenario: Testando retorno de /todos e verificando seu tipo.
    Given url url_base
    And path '/todos'
    When method get
    Then status 200
    And match each $ contains {userId: '#number', id: '#number', title: '#string', completed: '#boolean'}

Scenario: Testando retorno do usuário 3 e retorno do JSON.
    Given url url_base
    And path '/users/3'
    When method get
    Then status 200
    And match $.name == 'Clementine Bauch'

Scenario: Verificando retorno de post 1.
    Given url url_base
    And path '/posts/1'
    When method get
    Then status 200
    And match $.id == 1

Scenario: Testando retorno inválido.
    Given url url_base
    And path 'invalido'
    When method get
    Then status 404

Scenario: Criando um user.
    Given url url_base
    And path '/users'
    And request {id: 11, name: 'Ana Maria', username: 'maria_ana'}
    When method post
    Then status 201
    And match $.username == '#string'

Scenario: Adicionando um comentário.
    Given url url_base
    And path '/comments'
    And request {id: 501, name: 'Ana Maria', email: 'maria_ana@gmail', body: 'este é um comentário'}
    When method post
    Then status 201
    And match $.name == '#string'

Scenario: Deletando um user.
    Given url url_base
    And path '/users/11'
    When method delete
    Then status 200

Scenario: Fazendo o get do usuário 11 e não obtendo resultado.
    Given url url_base
    And path '/users/11'
    When method get
    Then status 404

Scenario: Buscando um post inexistente.
    Given url url_base
    And path '/posts/-1'
    When method get
    Then status 404
    