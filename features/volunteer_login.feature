Feature: A volunteer should need to login
  In order enter sales
  As a Volunteer
  I want to be able to sales in the system

Scenario: Login
  Given I am on the volunteer login page
  And there is a volunteer with the following:
    | email | password | password_confirmation |
    | lilian@gmail.com   | m00c0w   | m00c0w  |
  When I fill in the following:
    | email | lilian@gmail.com |
    | password   | m00c0w   |
  And I press "Login"
  Then I should be on the volunteer home page

Scenario: Unsuccessful login
  Given I am on the volunteer login page
  When I fill in the following:
    | email | lilian@gmail.com |
    | password   | wrong   |
  And I press "Login"
  Then I should be on the volunteer session page
  And I should not see "Successfully logged in"

Scenario: Logout
  Given I am logged in as "lilian@gmail.com"
  And I am on the admin home page
  When I follow "Logout"
  Then I should see "Successfully logged out."

Scenario: Try to use protected controller
  When I go to the admin home page
  Then I should be on the volunteer login page
  And I should not be logged in
