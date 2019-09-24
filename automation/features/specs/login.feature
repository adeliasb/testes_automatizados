#language: en

Feature: Login
  In order to manage my shopping cart
  As Netshoes customer
  I would like to sign in for Netshoes

  Background:
    Given I have all the required variables to execute the feature: Login
    And I access Netshoes login page
  
    Scenario: User Login
       And I provide my email
       And I provide my password
       When I try to access my account
       Then I logged in successfully
