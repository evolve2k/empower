Feature: Badge
  In order to acknowledge achievements
  As an administrator
  I want to manage badges
  
  @wip
  Scenario: Non-admin user
    Given I am logged in
    When I go to the admin badges page
    Then I should be forbidden
  
  @wip 
  Scenario: View all badges
    Given I am on the admin page
    And I link to "badges"
    Then I should see a list of badges


