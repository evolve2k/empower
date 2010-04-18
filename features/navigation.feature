Feature: Navigation
  In order to navigate the site
  As a user
  I want to click through tabs and menus etc.


  Scenario: Logged in users can use tabs
    Given I am logged in as "lilian@gmail.com"
    When I follow "volunteers"
    Then I should be on the admin volunteers page
    And I should see "New volunteer"
    Given there are no badges
    When I follow "badges"
    Then I should be on the new admin badge page
    When I follow "events"
    Then I should be on the admin events page
    Given a badge exists
    When I follow "badges"
    Then I should be on the admin badges page
    When I follow "locations"
    # Then I should be on the admin locations page
    When I follow "region"
    # Then I should be on the admin regions page
    