module LoginPageHelper

include Capybara::DSL

def get_email
    enter_email
end
  
def get_password
    enter_password
end
  
def access_account
    login
end
  
def expected_user_logged_in
    expect(find('#header-user-logged a[href="#header-user-logged"]').text). to eql("Olá, Brenda")
end


end