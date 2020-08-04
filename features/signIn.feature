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
    Then I should see in form validation "Mot de passe ou identifiant invalide."

Scenario: Enter unknown account and valid password
    When I fill in "Email*" with "empty@account.fr"
    When I fill in "Mot de passe*" with "BigPaswwordSecure"
    And I click button "Se connecter"
    Then I should see in form validation "Aucun compte Livestorm n'est associé à cet email : empty@account.fr"

Scenario: Enter Password Special Characters
    When I fill in "Email*" with "neplaz.dimitri@gmail.com"
    When I fill in "Mot de passe*" with "!~~^^$$$$****///\\\^^\^"
    And I click button "Se connecter"
    Then I should see in form validation "Mot de passe ou identifiant invalide."