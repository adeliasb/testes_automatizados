module ShoppingByProductPageHelper

    include Capybara::DSL

    def choose_a_dress
        find('#block_top_menu > ul li:nth-last-child(2)').hover
        find('#block_top_menu > ul li:nth-last-child(2) > ul li:nth-last-child(1)').click
        find('#list').click
    end
  
    def add_to_the_cart
        find(:css, '#center_column > ul li:nth-last-of-type(3) a.button.ajax_add_to_cart_button.btn.btn-default').click
    end
  
    def proceed_checkout
        find(:css, '#layer_cart a.btn.btn-default.button.button-medium').click
    end
  
    def confirm_summary
        find(:css, '.cart_navigation a.button.btn.btn-default.standard-checkout.button-medium').click
    end

    def confirm_address
        find(:css, '.cart_navigation button.button.btn.btn-default.button-medium').click
    end
  
    def confirm_shipping
        find('#uniform-cgv').click
        find(:css, 'button.button.btn.btn-default.standard-checkout.button-medium').click
    end
    
    def select_payment_method
        find('#HOOK_PAYMENT a.bankwire').click
    end

    def confirm_order
        find(:css, 'button.btn.btn-default.button-medium').click
    end

    def submit_order
        find(:css, 'button.btn.btn-default.button-medium').click
    end
    
    def expected_order_confirmation
        expect(find('.box .cheque-indent').text).to eql("Your order on My Store is complete.")
    end
end
  