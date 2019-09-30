module GenericPageHelper

       include Capybara::DSL

       def get_user_email
           $user_email = "automation_" + Time.now.to_time.to_i.to_s + "@test.com"
       end

       def get_password
           $password = "automation_" + Time.now.to_time.to_i.to_s
       end
end