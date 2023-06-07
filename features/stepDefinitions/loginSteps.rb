require_relative '../../lib/pages/loginPage'
login_page = LoginPage.new($driver)

Given('I enter valid username and password') do
  login_page.enterUsername('admin@hepapi.com')
  login_page.enterPassword('hepapi')
end

When('I enter invalid username or password') do
  login_page.enterUsername('invalid@hepapi.com')
  login_page.enterPassword('invalidpassword')
  login_page.clickLoginButton
end

Then('I should see an error message') do
  error_message = login_page.getErrorMessage
  expect(error_message).to eq('LOGIN FAILED!')
end

Then('I should see an empty error message') do
  error_message = login_page.getErrorMessage
  expect(error_message).to eq('Email and password should not be empty')
end

Given('I leave the username field empty') do
  login_page.clearUsernameField
end

Given('I enter a valid username') do
  login_page.enterUsername('admin@hepapi.com')
end

Given('I enter a valid password') do
  password = 'hepapi'
  login_page.enterPassword(password)
end

And('I leave the password field empty') do
  login_page.clearPasswordField
end

And('I click the login button') do
  login_page.clickLoginButton
end