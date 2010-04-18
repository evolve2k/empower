Feature: Manage roles
  In order to setup roles
  As an administrator
  I want to mange the roles
  
  Background:
    Given I am logged in as "scott@gmail.com"
    And I go to the admin roles page
    And I follow "New role"
    When I fill in the following:
      | name        | manager                      |
      | description | generally just stuffs around |
    And press "Create Role"
  
  Scenario: Creating a new role
    Then I should be on the admin roles page
    And I should see "Successfully created!"
    And a role should exist with name: "manager", description: "generally just stuffs around"
    
  Scenario: Updating a role
    Given I follow "manager"
    When I fill in the following:
      | name        | executive            |
      | description | always stuffs around |
    And press "Update Role"
    Then I should be on the admin roles page
    And I should see "Successfully updated!"
    And a role should exist with name: "executive", description: "always stuffs around"
    
  Scenario: Adding a permission to a role
    Given a permission exists with name: "manage volunteers", description: "update info about the slaves"
    And I follow "manager"
    When check "manage volunteers"
    And press "Update Role"
    Then I should be on the admin roles page
    And I should see "Successfully updated!"
