require_relative '../../lib/pages/home_page'
require_relative '../../lib/pages/login_page'

home_page = HomePage.new($driver)
login_page = LoginPage.new($driver)


Then('I should be logged in successfully') do
  login_page.click_login_button
  welcome_text = home_page.get_welcome_text
  expect(welcome_text).to eq('Welcome Hepapi')
end

Then('I click the logout button') do
  home_page.click_logout_button
end