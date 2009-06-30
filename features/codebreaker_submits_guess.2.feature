Feature: code-breaker submits guess

  As a code-breaker
  I want to submit a guess
  So that I can try to break the code
  
  Scenario: all four correct colors in correct positions
    Given the secret code is r g y c
    When I guess r g y c
    Then the mark should be bbbb
    
  Scenario: all four correct colors, two in correct positions
  Given the secret code is r g y c
  When I guess r g c y
  Then the mark should be bbww
  
  Scenario: all four correct colors, one in the correct position
    Given the secret code is r g y c
    When I guess y r g c
    Then the mark should be bwww

  Scenario: all four correct colors, none in correct positions
    Given the secret code is r g y c
    When I guess c r g y
    Then the mark should be wwww
