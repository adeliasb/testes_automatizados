Before do
    page.current_window.resize_to(1440, 900) 
end

Before('@login') do
    visit 'http://a.testaddressbook.com/sign_in'
    fill_in 'session_email', :with => "automation_1568155575@test.com"
    fill_in 'session_password', :with => "test123"
    find('.btn').click
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.tr(' ', '_').downcase!

    if scenario.failed?
       screenshot = "log/screenshots/failed/#{nome_cenario}.png"
    else
       screenshot = "log/screenshots/passed/#{nome_cenario}.png"
       page.save_screenshot(screenshot)
       embed(screenshot, 'image/png', 'Evidence')
    end
end