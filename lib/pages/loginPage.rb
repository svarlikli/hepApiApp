class LoginPage
    def initialize(driver)
      @driver = driver
    end
  
    def enterUsername(username)
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/username') }.send_keys(username)
    end
  
    def enterPassword(password)
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/password') }.send_keys(password)
    end
  
    def clickLoginButton
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/loginbtn') }.click
    end

    def getErrorMessage
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/warningMessage') }.text
    end

    def clearUsernameField
        usernameField = wait.until { @driver.find_element(:id, "com.example.myloginapp:id/username")}
        usernameField.clear
    end
    
    def clearPasswordField
        passwordField = wait.until { @driver.find_element(:id, "com.example.myloginapp:id/password")}
        passwordField.clear
    end

    def wait
      Selenium::WebDriver::Wait.new(timeout: 5)
    end

  end
  