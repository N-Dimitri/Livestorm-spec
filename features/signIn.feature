Feature: SignIn form

Background: 
    Given I visit "https://app.livestorm.co/"

 Scenario: Connect to my account in LiveStorm Dashboard
    When I fill my email and password
    And I click "Se connecter"
