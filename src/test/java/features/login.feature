Feature: login Feature

  Scenario: User should Login with valid email or phone number and valid password
    Given User at Facebook login page
    And user enter valid email or phone number
    And user enter valid password
    When user click on Login button
    Then User should be able to successfully Login

  Scenario: User should not able to login with invalid email or phone number and valid password
    Given User at facebook login page
    And user enter invalid email or phone number
    And user enter valid password
    When user click on Login button
    Then User should be able to see "The email or mobile number you entered isn't connected to an account. Find your account and log in."

  Scenario: User should not able to login with valid email or phone number and invalid password
    Given User at facebook login page
    And user enter valid email or phone number
    And user enter invalid password
    When user click on Login button
    Then User should be able to see "The email or mobile number you entered isn't connected to an account. Find your account and log in."

  Scenario: User should not able to login with invalid email or phone number and invalid password
    Given User at facebook login page
    And user enter invalid email or phone number
    And user enter invalid password
    When user click on Login button
    Then User should be able to see "The email or mobile number you entered isn't connected to an account. Find your account and log in."
