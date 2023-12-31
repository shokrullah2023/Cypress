Feature: WebDriverUniversity - Contact Us Page
@regression
    Scenario: Valid Contact Us Form Submission
        Given I navigate the webdriveruniversitypage homepage
        When I click on the contact us button
        And I type a first name
        And I type a last name
        And I enter an email address
        And I type a comment
        And I click on submit button
        Then I should be presented with a successful contact us submission message


    Scenario: Invalid Contact Us Form Submission
        Given I navigate the webdriveruniversitypage homepage
        When I click on the contact us button
        And I type a first name
        And I type a last name
        And I type a comment
        And I click on submit button
        Then I should be presented with a unsuccessful contact us submission message


@smoke

    Scenario Outline: Validate Contact Us Form Submission
        Given I navigate the webdriveruniversitypage homepage
        When I click on the contact us button
        And I type a first name '<firstName>'
        And I type a last name '<lastName>'
        And I type a comment '<comment>'
        And I click on submit button
        Then I should be presented with a validation Page


    Examples:
        | firstName | lastName | comment |
        | webdriver  | webdriver123  | validation succeeded |
        | webdriver  | webdriver  | validation failed |