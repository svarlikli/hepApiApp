Feature: Login Functionality

    Scenario: Successful login with correct credentials and logout
        Given I enter valid username and password
        And I should be logged in successfully
        Then I click the logout button

    Scenario: Failed login with incorrect credentials
        When I enter invalid username or password
        Then I should see an error message

    Scenario: Login with empty username
        Given I leave the username field empty
        And I enter a valid password
        And I click the login button
        Then I should see an empty error message

    Scenario: Login with empty password
        Given I enter a valid username
        And I leave the password field empty
        And I click the login button
        Then I should see an empty error message