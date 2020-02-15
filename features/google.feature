Feature: Google
  I can use Google

  Scenario: Going to google
    Given I am on google
    When I search cats
    Then I see results
