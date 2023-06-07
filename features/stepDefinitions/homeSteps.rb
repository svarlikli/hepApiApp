require_relative '../../lib/pages/homePage'
require_relative '../../lib/pages/loginPage'

homePage = HomePage.new($driver)
loginPage = LoginPage.new($driver)


Then('I should be logged in successfully') do
  loginPage.clickLoginButton
  welcomeText = homePage.getWelcomeText
  expect(welcomeText).to eq('Welcome Hepapi')
end

Then('I click the logout button') do
  homePage.clickLogoutButton
end