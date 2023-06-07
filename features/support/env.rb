require 'appium_lib'
require 'appium_lib_core'

caps = {
  platformName: "Android",
  platformVersion: "12.0",
  deviceName: "Pixel_2_API_31",
  appActivity: "MainActivity",
  app: File.join(File.dirname(__FILE__), '..', '..', 'hepapi-example.apk'),
  noReset: false,
  autoLaunch: true,
  newCommandTimeout: 7000,
  appWaitDuration: 50000,
  appWaitForLaunch: true,
  autoGrantPermissions: true,
  ensureWebviewsHavePages: true,
  nativeWebScreenshot: true,
  connectHardwareKeyboard: true
}

opts = {
  caps: caps,
  appium_lib: {
    server_url: "http://127.0.0.1:4723/wd/hub"
  }
}

$driver = Appium::Driver.new(opts, true)
$driver.start_driver

at_exit do
  $driver.driver_quit
end
