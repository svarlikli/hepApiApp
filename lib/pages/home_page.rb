class HomePage

    def initialize(driver)
      @driver = driver
    end
  
    def get_welcome_text
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/welcomeText') }.text
    end
  
    def click_logout_button
      wait.until { @driver.find_element(id: 'com.example.myloginapp:id/logout') }.click
    end

    def wait
      Selenium::WebDriver::Wait.new(timeout: 5)
    end

  end
  