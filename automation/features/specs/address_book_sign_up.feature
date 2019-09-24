#language: en

Feature: Sign up
  In order to better manage my personal information
  As Fleury user
  I would like to sign up

  Background:
    Given I have all the required variables to execute the feature: Create an account
    And I access the test address book sign up option
  
    Scenario: To successfully sign up
       And I add a valid email
       And I add "test123" as my password
       When I try to sign up
       Then I'm authenticated successfully
       And I see "Welcome to Address Book" message

