#encoding: utf-8

Given("I have all the required variables to execute the feature: Buy Product") do
    @var = nil #
end
  
Given("I can choose a dress") do
    choose_a_dress
end
  
Given("I can add the dress into the cart") do
    add_to_the_cart
end
  
Given("I can proceed to checkout") do
    proceed_checkout
end

Given("I can confirm my shopping summary") do
    confirm_summary
end
  
Given("I can confirm my address") do
    confirm_address
end
  
Given("I can confirm shipping information") do
    confirm_shipping
end
  
Given("I can select the payment method") do
    select_payment_method
end

When("I confirm the order") do
    confirm_order
end
  
Then("I get my order confirmation") do
    expected_order_confirmation
end
  