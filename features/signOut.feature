@signOut
Feature: SignIn form

Background: 
    Given I visit "https://app.livestorm.co/"
    When I fill my email and password
    And I click "Se connecter"
    Then I am connected to the dashboard

 Scenario: Connect to my account and loggout
    When I open my account menu
    And I click "Déconnexion"
    Then I am to the login page

Scenario: Test logout route
    Given I visit "https://app.livestorm.co/#/logout"
    Then I am to the login page

