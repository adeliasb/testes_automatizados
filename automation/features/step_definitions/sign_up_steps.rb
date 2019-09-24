#encoding: utf-8

Given("I have all the required variables to execute the feature: Sign up") do
    welcome_message = nil # it stores the welcome message text
end
  
Given("I access Netshoes login page") do
    visit_login_page
end
  
Given("I'm redirected to sign up page after adding my email") do
    inform_email
end

Given("I add all my personal information") do
    add_personal_information
end
  
When("I try to sign up") do
    sign_up
end
  
Then("I'm authenticated successfully with {string} welcome message") do |message|
    welcome_message = message
    expected_welcome_message(message)
end
  
