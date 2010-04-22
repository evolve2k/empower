Feature: Manage event administration
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

  Scenario: Admin Events Volunteer page (Menu navigation)
    Given I am on the new admin volunteer page
    Then I should see "Events"
    When I follow "Events"
    Then I should be on the admin events page

  Scenario: Admin Events Index page (No content)
    Given I am on the admin events page
    And there are no events available
    Then I should see "Sorry there are no events"
    And I should see "Create an event"

  Scenario: Admin Events Index page
    Given an event: "test" exists with name: "test"
    Given I am on the admin events page
    Then I should not see "Sorry there are no events"
    And I should see "Create an event"
    And I should see "Weather"
    And I should see "What"
    And I should see "Where"
    And I should see "When"



