module GenericPageHelper

include Capybara::DSL

def get_user_email
    @user_email = "automation_" + Time.now.to_time.to_i.to_s + "@test.com"
end

def enter_email
    find('.sign-in #username').set("brendarayssaantonellapinto_@hydropowermc.com.br")
end

def enter_password
    find('.sign-in #password').set("EReXuFgIAT")
end

def login
    find('.sign-in #login-button').click
end

end