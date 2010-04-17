Feature: Manage events
  In order to have events working well
  The administrator
  wants perfection


  Scenario: Getting to the new volunteer page from Volunteers
    Given I am on the events page
    When I follow "New event"
    Then I should be on new event page
    And I should see "New event"

  Scenario: Adding a event to the system
    Given I am on the new event page
    When I fill in the following:
       | Given Name | Tyson |
       | Surname    | Avery |
    And I press "Submit"
    Then I should be on "events"
    And I should see "Tyson Avery" within "name"


