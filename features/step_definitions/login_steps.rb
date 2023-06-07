require_relative '../../lib/pages/login_page'
login_page = LoginPage.new($driver)

Given('I enter valid username and password') do
  login_page.enter_username('admin@hepapi.com')
  login_page.enter_password('hepapi')
end

Then('I should be logged in successfully') do
  login_page.click_login_button
  welcome_text = login_page.get_welcome_text
  expect(welcome_text).to eq('Welcome Hepapi')
  login_page.click_logout_button
end

When('I enter invalid username or password') do
  login_page.enter_username('invalid@hepapi.com')
  login_page.enter_password('invalidpassword')
  login_page.click_login_button
end

Then('I should see an error message') do
  error_message = login_page.get_error_message
  expect(error_message).to eq('LOGIN FAILED!')
end

Then('I should see an empty empty error message') do
  error_message = login_page.get_error_message
  expect(error_message).to eq('Email and password should not be empty')
end

Given('I leave the username field empty') do
  login_page.clear_username_field
end

Given('I enter a valid username') do
  login_page.enter_username('admin@hepapi.com')
end

Given('I enter a valid password') do
  password = 'hepapi'
  login_page.enter_password(password)
end

And('I leave the password field empty') do
  login_page.clear_password_field
end

When('I click the login button') do
  login_page.click_login_button
end