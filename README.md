# HepApi Example APP
# Mobile App Automation with Ruby, Cucumber, and Appium

This project demonstrates the automation of login functionality in the mobile application "hepapi-example.apk" using the Ruby-Cucumber-Appium tool stack.

## Prerequisites

Before running the automation scenarios, make sure you have the following components set up on your machine:

- **Ruby**: Install Ruby programming language (version X.X.X) from [ruby-lang.org](https://www.ruby-lang.org/).
- **Bundler**: Install Bundler gem by running `gem install bundler` command in the terminal.
- **Appium Server**: Download and install Appium Server from [appium.io](http://appium.io/) or install it via npm: `npm install -g appium`.
- **Android SDK**: Install Android SDK and set up the necessary environment variables. Make sure you have the required Android API level installed.

## Project Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/svarlikli/hepApiApp.git

2. **Navigate to the project directory:**
    ```bash
    cd hepApiApp
    ```
2. **Install dependencies:**
    ```bash
    bundle install
    ```
3. **Connect your Android device or start an Android emulator:**
Connect your Android device or start an Android emulator:
    - Android Device: Connect your Android device to your computer using a USB cable. Make sure that USB debugging is enabled on your device.
    - Android Emulator: Start an Android emulator using tools such as Android Studio or Android SDK Manager. Wait for the emulator to fully boot up before proceeding.
    - It is essential to have a connected Android device or a running emulator to perform the automation scenarios. This will allow the test framework to interact with the target application running on the device or emulator.
4. **Update the features/support/env.rb file with the desired Appium server and device configurations.**

## Running Scenarios

To execute the automation scenarios, run the following command:
  
```bash
    cucumber
```
## Project Structure

The project has the following structure:

```bash
├── cucumber.yml
├── features
│   ├── login.feature
│   ├── step_definitions
│   │   ├── home_steps.rb
│   │   └── login_steps.rb
│   └── support
│       └── env.rb
├── Gemfile
├── Gemfile.lock
├── hepapi-example.apk
├── lib
│   └── pages
│       ├── home_page.rb
│       └── login_page.rb
├── .gitignore
└── README.md
```

- features/login.feature: Contains the Gherkin scenarios for login functionality.
- features/step_definitions/login_steps.rb .home_steps.rb: Defines the step implementations for the login scenarios.
- features/support/env.rb: Configuration file for Project setup.
- Gemfile: Lists the project dependencies.
- README.md: Contains project documentation.

## Feedback

If you have any questions, suggestions, or encounter any issues, please feel free to reach out to me. Your feedback is valuable to me.