module ShoppingSignUpPageHelper

        include Capybara::DSL

        def sign_page
            visit '?controller=authentication&back=my-account'
        end

        def add_email
            find('#create-account_form').hover
            @email = get_user_email
            fill_in 'email_create', :with => @email
            find('#SubmitCreate').click
        end
  
        def add_personal_information
            find('#account-creation_form').hover
            find(:css, "#id_gender2").set(true)
            @first_name = "automation"
            fill_in 'customer_firstname', :with => @first_name
            @last_name = "test"
            fill_in 'customer_lastname', :with => @last_name
            fill_in 'passwd', :with => get_password
            birth_date_combo
            set_newsletter
            set_offers
        end

        def birth_date_combo
            find("#days option[value='12']").select_option
            find("#months option[value='2']").select_option
            find("#years option[value='1985']").select_option
        end

        def set_newsletter
            find('label[for="newsletter"]').click
        end

        def set_offers
            find('label[for="optin"]').click
        end

        def add_address
            fill_in 'address1', :with => "Test St."
            fill_in 'city', :with => "Orlando"
            find("#id_state option[value='9']").select_option
            fill_in 'postcode', :with => "11111"
            fill_in 'other', :with => "It is a test!!!"
            fill_in 'phone', :with => "001882134567"
            fill_in 'phone_mobile', :with => "001882134567"
            fill_in 'alias', :with => "Home"
        end
  
        def register
            find('#submitAccount').click
        end
  
        def expected_authentication
            expect(find('.header_user_info .account span').text).to eql(@first_name + " " + @last_name)
        end
end