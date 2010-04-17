Feature: An administrator should be able to manage volunteers
  In order to track all the volunteers involved the project
  As a Administrator
  I want to be able to manage volunteers in the system

  Background:
    Given I am logged in as "lilian@gmail.com"

  @wip
  Scenario: Getting to the new volunteer page from Volunteers
    Given I am on the admin volunteers page
    When I follow "New volunteer"
    Then I should be on the new admin volunteer page

  @wip
  Scenario: Adding a volunteer to the system
    Given I am on the new admin volunteer page
    When I fill in the following:
      | Given Names | Tyson           |
      | Surname     | Avery           |
      | Email       | tyson@avery.com |
    And I press "Create Volunteer"
    Then I should be on the admin volunteers page
    And I should see "Tyson Avery"
    And 1 email should be delivered to "tyson@avery.com"
    