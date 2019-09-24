module AddressBookCreateAddressPageHelper

include Capybara::DSL

def addresses_tab
    find('.navbar #navbar .navbar-nav a[href="/addresses"]').click
    find('.container a[href="/addresses/new"]').click
end
  
def add_address
    fill_in 'address_first_name', :with => "fleury"
    fill_in 'address_last_name', :with => "test"
    fill_in 'address_street_address', :with => "testaddress1"
    fill_in 'address_secondary_address', :with => "testaddress2"
    fill_in 'address_city', :with => "FLEURY" 
    find("#address_state option[value='AK']").select_option
    fill_in 'address_zip_code', :with => "11011011"
    choose 'address_country_us'
    fill_in 'address_birthday', :with => "3/6/1914"
    fill_in 'address_color', :with => "#007bff"
    fill_in 'address_age', :with => "29"
    fill_in 'address_website', :with => "http://www.teste.com.br"
    path_file = File.expand_path("..", Dir.pwd) + '/automation/features/samples/purple_flower.png'
    attach_file(path_file)
    fill_in 'address_phone', :with => "1121012233"
    find(:css, '#address_interest_read').set(true)
    fill_in 'address_note', :with => "Thanks for the information!!"
    find('#new_address .btn').click 
end
  
def expected_address
    page.should have_selector('.container .alert')
    expect(find('.container .alert').text).to eql("Address was successfully created.")
end

end