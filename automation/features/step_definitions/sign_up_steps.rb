#encoding: utf-8

Given("I have all the required variables to execute the feature: Sign up") do
    
end
  
Given("I access Netshoes login page") do
    visit_login_page
end
  
Given("I'm redirected to sign up page after adding my email") do
    inform_email
end

Given("I add all my personal information") do
    sleep 5
    add_personal_information
end
  
When("I try to sign up") do
    sign_up
end
  
Then("I'm authenticated successfully") do
    expected_authentication
end
  
Then("I see {string} welcome message") do |message|
    expected_message = message
    expected_welcome_message(expected_message)
end
  
