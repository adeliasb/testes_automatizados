module SignUpPageHelper

include Capybara::DSL

def visit_login_page
    visit 'https://www.netshoes.com.br/'
    close_modal
    start
end

def close_modal
    if :page.has_css?('.div-close', :visible => true)
    then
        find('.div-close').click
    end
end

def start
    find('.main-user-menu a[href="#header-user-anonymous"]').click
    find('.main-user-menu a[href="/login"]').click
end
  
def inform_email
    @email =  get_user_email
    fill_in 'sign-up-username', :with => @email
    find('#verify-email-button').click
end

def add_personal_information
    fill_in 'person-name', :with => "automation"
    fill_in 'person-last-name', :with => "test"
    gender_radio_button
    birth_date_combo
    @cpf = Faker::CPF.numeric
    fill_in 'cpf', :with => @cpf
    fill_in 'address-zipcode', :with => "13092-145"
    fill_in 'address-number', :with => "130"
    fill_in 'phones-home', :with => "1935678900"
    set_short_message
    fill_in 'password', :with => "xPTO4218@"
    uncheck_emails_offer
end

def gender_radio_button
    find('#label-female').click
end

def birth_date_combo
    find("#dateofbirth-day option[value='12']").select_option
    find("#dateofbirth-month option[value='08']").select_option
    find("#dateofbirth-year option[value='1985']").select_option
end

def set_short_message
    find(:css, "#check-sms").set(true)
end

def uncheck_emails_offer
    find(:css, "#preferences-newsletter").set(false)
end

def sign_up
    find('#save-register-natural').click
end
  
def expected_welcome_message(message)
    @message = (message).sub("usuário", "automation")
    expect(find('#header-user-logged a[href="#header-user-logged"]').text). to eql(@message)
end

end