Feature: Validar eliminación de un post
  Background:
    Given url "https://jsonplaceholder.typicode.com"

  Scenario: Validar eliminación exitosa
    Given path 'posts/1'
    When method DELETE
    Then assert responseStatus == 200 || responseStatus == 204
    And match response == {}

    #El endpoint de /posts responde 200 hasta con el parametro 1, entonces escapes
    #Forzando el 404, colocando una ruta adicional

  Scenario: Validar eliminación exitosa
    Given path 'posts/1/1'
    When method DELETE
    Then assert responseStatus == 404
    And match response == {}