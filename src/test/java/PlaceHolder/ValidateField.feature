Feature: Lista de usuarios
  Background:
    Given url "https://jsonplaceholder.typicode.com/"

    Scenario: Creacion con post
      Given path "/posts"
      And request { title: 'Mi primer post', body: 'Este es el contenido del post', userId: 1 }
      When method post
      Then status 201
      And match response.id == "#number"
      And match response.title == "Mi primer post"
