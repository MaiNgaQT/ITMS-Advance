Feature: Test The HerokuApp Login
    Background: Go to The HerokuApp Login
        Given I go to Login Page
    Scenario Outline: Making successful and unsuccessful login
        When I enter the username as "<username>" And password as "<password>"
        Then I get a mesage as "<message>"
    
    Examples: Login info
    |username|password              |message                        |
    |tomsmith|SuperSecretPassword!  |You logged into a secure area!×|
    |abc     |SuperSecretPassword!  | Your username is invalid!×    |
    |tomsmith|xyz123                |Your password is invalid!×     |
    ||| Your username is invalid!×|