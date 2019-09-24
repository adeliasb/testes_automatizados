#encoding: utf-8

Given("I have all the required variables to execute the feature: Create an account") do
    @user_email = nil  # user email set up
    @user_password = nil # user password set up
    @message_found = nil # message response
end
  
Given("I access the test address book sign up option") do
    address_book_sign_up_page
end
  
Given("I add a valid email") do
    address_book_email
end
  
Given("I add {string} as my password") do |password|
    @user_password = password
    address_book_password(@user_password)
end
  
When("I try to sign up") do
    address_book_sign_up
end
  
Then("I'm authenticated successfully") do
    expected_authentication(@user_email)
end
  
Then("I see {string} message") do |message|
    @message_found = message
    expected_message(@message_found)
end