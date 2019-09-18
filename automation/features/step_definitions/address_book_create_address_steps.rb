#encoding: utf-8

Given("I have all the required variables to execute the feature: User Address") do
    @var = nil #
end
  
Given("I'm on addresses tab") do
    addresses_tab
end
  
When("I try to add a new address") do
    add_address
end
  
Then("the address is added successfully I") do
    expected_address
end