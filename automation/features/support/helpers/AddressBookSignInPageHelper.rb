module AddressBookSignInPageHelper

include Capybara::DSL

def address_book_sign_in_page
    visit '/sign_in'
end
  
def address_book_valid_email(email_found)
    fill_in 'session_email', :with => email_found
end

def address_book_existing_password(user_password)
    fill_in 'session_password', :with => user_password
end
  
def address_book_sign_in
    find('.btn').click
end

def expected_login(email_found)
    page.should have_selector('.navbar #navbar span')
    expect(find('.navbar #navbar .navbar-text').text).to eql(email_found)
end


end