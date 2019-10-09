#language: en

Feature: Sign up
  In order to do some shopping
  As shopping site customer
  I would like to sign up

  Background:
    Given I have all the required variables to execute the feature: Sign Up
    And I access the automation practice "sign_in" option
  
    Scenario: To successfully sign up
       And I add a valid email
       And I add my personal information
       And I add my address information
       When I try to sign up
       Then I'm authenticated successfully

