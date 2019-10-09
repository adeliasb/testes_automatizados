#language: en

Feature: Buy product
  In order to acquire a new product
  As web shopping customer
  I would like to have a new shopping cart

  Background:
    Given I have all the required variables to execute the feature: Buy Product
    And I access the automation practice "sign in" option
    And I add a valid email
    And I add my personal information
    And I add my address information
    And I try to sign up
  
    Scenario: Buy product
       And I can choose a dress
       And I can add the dress into the cart
       And I can proceed to checkout
       And I can confirm my shopping summary
       And I can confirm my address
       And I can confirm shipping information
       And I can select the payment method
       When I confirm the order
       Then I get my order confirmation