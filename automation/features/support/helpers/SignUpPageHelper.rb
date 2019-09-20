module SignUpPageHelper

include Capybara::DSL

def visit_login_page
    visit 'https://www.netshoes.com.br/'
    if :page.has_css?('.div-close', :visible => true)
    then
       find('.div-close').click
    end
end
  
def inform_email

end

def add_personal_information
end
  
def sign_up
end
  
def expected_authentication
end
  
def expected_welcome_message(expected_message)
end


end