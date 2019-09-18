#encoding: utf-8

Given("I have all the required variables to execute the feature: User login") do
    @email_found = nil  # user email set up
    @user_password = nil # user password set up
end
  
Given("I access the test address book sign in option") do
    address_book_sign_in_page
end
  
Given("I add {string} as my existing email") do |email|
    @email_found = email
    address_book_valid_email(@email_found)
end

Given("I add {string} as my existing password") do |password|
    @user_password = password
    address_book_existing_password(@user_password)
end
  
When("I try to sign in") do
    address_book_sign_in
end

Then("I'm logged in successfully") do
    expected_login(@email_found)
end