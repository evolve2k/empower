Feature: An administrator should be able to manage volunteers
  In order to track all the volunteers involved the project
  As a Administrator
  I want to be able to manage volunteers in the system

Scenario: Getting to the new volunteer page from Volunteers
  Given I am on the admin volunteers page
  When I follow "New volunteer"
  Then I should be on the new admin volunteer page

Scenario: Adding a volunteer to the system
  Given I am on the new volunteer page
  When I fill in the following:
       | Given Name | Tyson  |
       | Surname    | Avery  |
  And I press "Submit"
  Then I should be on "volunteers"
  And I should see "Tyson Avery" within "name"

