# language: en

Feature: Run Marvel APIs

  @list
  Scenario Outline: List 5 characters
    Given Get the number of heroes "<number>"
    Then Return the heroes

    Examples: 
      | number |
      | 5      |

  @info    
  Scenario Outline: List information about a character
    Given Get character information "<id>"
    Then Return the heroes

    Examples: 
      | id      |
      | 1011334 |

  @comics    
  Scenario Outline: List comics about a character
    Given Get character comics "<id>"
    Then Return comics

    Examples: 
      | id      |
      | 1011334 |