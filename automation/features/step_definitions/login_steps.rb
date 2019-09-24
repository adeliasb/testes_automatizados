#encoding: utf-8

Given("I have all the required variables to execute the feature: Login") do
    
end
  
Given("I provide my email") do
    get_email
end
  
Given("I provide my password") do
    get_password
end
  
When("I try to access my account") do
    access_account
end
  
Then("I logged in successfully") do
   expected_user_logged_in
end