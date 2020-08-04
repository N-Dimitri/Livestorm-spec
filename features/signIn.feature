@signIn
Feature: SignIn form

Background: 
    Given I visit "https://app.livestorm.co/"

 Scenario: Connect to my account in LiveStorm Dashboard
    When I fill my email and password
    And I click button "Se connecter"
    Then I am connected to the dashboard

Scenario: Enter Invalid email and submit form
    When I fill in "Email*" with "ddds"
    And I click button "Se connecter"
    Then I should see "Cette valeur n'est pas une adresse email valide."

Scenario: Enter 4 caractères to password field and submit form
    When I fill in "Mot de passe*" with "poep"
    And I click button "Se connecter"
    Then I should see "Cette chaîne est trop courte. Elle doit avoir au minimum 8 caractères."

Scenario: Enter correct email and wrong password and submit form
    When I fill in "Email*" with "neplaz.dimitri@gmail.com"
    And I fill in "Mot de passe*" with "Worldpspspea"
    And I click button "Se connecter"
    Then I should see in form error "Mot de passe ou identifiant invalide."