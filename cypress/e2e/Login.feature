Feature: WebDriverUniversity - Login Page'

Scenario Outline: Validate Valid & Invalid Login Credentials
    Given I navigate the webdriveruniversitypage homepage
    When I click on the login portal button
    And I type a username <username>
    And I type a password <password>
    And I click on the login button
    Then I should be presented with alert box which contains text '<expectedAlertText>'

    Examples:
        | username | password | expectedAlertText |
        | webdriver  | webdriver123  | validation succeeded |
        | webdriver  | webdriver  | validation failed |