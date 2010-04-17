Feature: A volunteer should need to login
  In order enter sales
  As a Volunteer
  I want to be able to sales in the system

Scenario: Login
  Given I am on the volunteer login page
  And there is a volunteer with the following details:
    | Username | Password |
    | Lilian   | m00c0w   |
  When I fill in the following:
    | username | password |
    | lilian   | m00c0w   |
  Then I should be on the admin home page
  And I should see login sucessful

Scenario: Unsuccessful login
  Given I am on the home page
  And there is a volunteer with the following details:
    | Username | Password |
    | Lilian   | m00c0w   |
  When I follow "Volunteer Login"
  Then I should be on the admin home page
  And I should see login sucessful
  