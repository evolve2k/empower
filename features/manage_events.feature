Feature: Manage events
  In order to have events working well
  The administrator
  wants perfection

  Background:
    Given I am on the volunteer login page
    And there is a volunteer with the following:
    | email | password | password_confirmation |
    | lilian@gmail.com   | m00c0w   | m00c0w  |
    When I fill in the following:
    | email | lilian@gmail.com |
    | password   | m00c0w   |
    And I press "Login"
    Then I should be on the admin home page
    And I should see "Successfully logged in"

  Scenario: Admin Events Volunteer  page
    Given I am on the new admin volunteer page
    Then I should see "events"
    And I follow "events"
    Then I should be on the admin events page

  Scenario: Admin Events Index page
    Given I am on the admin events page
    Then I should be on the admin events page



