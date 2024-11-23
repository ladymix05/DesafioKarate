Feature: ExampleBackground

  Background:
    Given url "https://postman-echo.com/"

  Scenario: status
    Given path "status/200"
    When method get
    Then status 200
    And print response

  Scenario: stream
    Given path "stream/5"
    When method get
    Then status 200
    And print response
