class LoginPage
    def initialize(driver)
      @driver = driver
    end
  
    def enter_username(username)
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/username') }.send_keys(username)
    end
  
    def enter_password(password)
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/password') }.send_keys(password)
    end
  
    def click_login_button
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/loginbtn') }.click
    end
  
    def get_welcome_text
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/welcomeText') }.text
    end
  
    def click_logout_button
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/logout') }.click
    end
  
    def get_error_message
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/warningMessage') }.text
    end

    def clear_username_field
        username_field = wait.until { @driver.find_element(:id, "com.example.myloginapp:id/username")}
        username_field.clear
    end
    
    def clear_password_field
        password_field = wait.until { @driver.find_element(:id, "com.example.myloginapp:id/password")}
        password_field.clear
    end

    def wait
      Selenium::WebDriver::Wait.new(timeout: 5)
    end

  end
  