#encoding: utf-8

Given("I have all the required variables to execute the feature: Sign Up") do
    $password = nil # it stores user password
    $user_email = nil # it stores user email   
end
  
Given("I access the automation practice {string} option") do |page|
    sign_page
end
  
Given("I add a valid email") do
    add_email
end
  
Given("I add my personal information") do
    add_personal_information
end

Given("I add my address information") do
    add_address
end
  
When("I try to sign up") do
    register
end
  
Then("I'm authenticated successfully") do
    expected_authentication
end