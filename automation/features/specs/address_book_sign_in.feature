#language: en

Feature: User login
  In order to better check my personal information
  As Fleury user
  I would like to sign in

  Background:
    Given I have all the required variables to execute the feature: User login
    And I access the test address book sign in option
  
    Scenario: To successfully sign in
       And I add "automation_1568155575@test.com" as my existing email
       And I add "test123" as my existing password
       When I try to sign in
       Then I'm logged in successfully
       And I see "Welcome to Address Book" message
