#language: en

Feature: Sign up
  In order to manage my shopping cart
  As Netshoes user
  I would like to sign up for Netshoes

  Background:
    Given I have all the required variables to execute the feature: Sign up
    And I access Netshoes login page
    And I'm redirected to sign up page after adding my email
  
    Scenario: To successfully sign up
       And I add all my personal information
       When I try to sign up
       Then I'm authenticated successfully with "Olá, usuário" welcome message
