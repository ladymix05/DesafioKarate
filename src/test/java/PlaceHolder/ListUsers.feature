Feature: Lista de usuarios
  Background:
    Given url "https://jsonplaceholder.typicode.com/"

    Scenario: obtener una lista de usuarios
      Given path "/users"
      When method get
      And print response
      Then status 200
      And match response[0].name != ''
