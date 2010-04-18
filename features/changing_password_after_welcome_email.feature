Feature: Changing password after welcome email
  In order to update my password
  As a new volunteer
  I want to update my password
  
  Background:
    Given I am logged in as "lilian@gmail.com"
    And I am on the new admin volunteer page
    When I fill in the following:
      | Given Names | Tyson           |
      | Surname     | Avery           |
      | Email       | tyson@avery.com |
    And I press "Create Volunteer"
    And 1 email should be delivered to "tyson@avery.com"