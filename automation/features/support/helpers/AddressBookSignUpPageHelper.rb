module AddressBookSignUpPageHelper

include Capybara::DSL

def address_book_sign_up_page
    visit '/sign_up'
end
      
def address_book_email
    @email = get_user_email
    fill_in 'user_email', :with => @email
end
      
def address_book_password(user_password)
    fill_in 'user_password', :with => user_password
end
      
def address_book_sign_up
    find('.btn').click
end
      
def expected_authentication(user_email)
    page.should have_selector('.navbar #navbar span')
    expect(find('.navbar #navbar .navbar-text').text).to eql(@email)
end
      
def expected_message(message_found)
    expect(find('.container .text-center h1').text).to eql(message_found)
end
end