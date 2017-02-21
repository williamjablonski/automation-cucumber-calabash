

Feature: As an user, I want validade what type my triangle is

  @Validate-triangle-type
  Scenario Outline: Validate triangle type
    Given I am on home page
    And I put the values of primeiro lado as <lado_1>, segundo lado as <lado_2> and terceiro lado as <lado_3>
    And I click at button Calcular
    Then the type of triangule showed is "<type_of_triangle>"

    Examples:
    | lado_1   | lado_2 | lado_3 |type_of_triangle|
    | 3 |  3 | 3 | Equilátero|
    | 3 |  3 | 2 | Isósceles |
    | 1 | 2 | 3 | Escaleno |

