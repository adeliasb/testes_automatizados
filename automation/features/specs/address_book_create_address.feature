#language: en

@login
Feature: Address
  In order to have my information up to date
  As Fleury user
  I would like to create an address

  Background:
    Given I have all the required variables to execute the feature: User Address

    Scenario: Create address
       And I'm on addresses tab
       When I try to add a new address
       Then the address is added successfully I