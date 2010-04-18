Feature: Volunteer roles
  In order to restrict access to certain people
  As an administrator
  I want to have roles
  
  Scenario: Assigning a role to a volunteer
    Given I am logged in as "lilian@gmail.com"
    And volunteer "scott" exists
    And I got to the volunteer "scott" edit page
    Then show me the page
  
  
  
