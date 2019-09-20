#language: en

Feature: Sign up
  In order to manage my shopping cart
  As Netshoes user
  I would like to sign up for Netshoes

  Background:
    Given I have all the required variables to execute the feature: Sign up
    And I access Netshoes sign up page
  
    Scenario: To successfully sign up
       And I add a valid email
       And I add "test123" as my password
       When I try to sign up
       Then I'm authenticated successfully
       And I see "Olá, usuário" welcome message
