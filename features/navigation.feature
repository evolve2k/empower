Feature: Navigation
  In order to navigate the site
  As a user
  I want to click through tabs and menus etc.


  Scenario Outline: Logged in users can use tabs
    Given I am logged in as "lilian@gmail.com"
    When I follow "<tab>"
    Then I should see "<tab>" within "#header a.active"
    And I should be on the <path>
    Given there are no badges
    When I follow "Badges"
    Then I should be on the new admin badge page
    And I should see "Badges" within "#header a.active"
    Given a badge exists
    When I follow "Badges"
    Then I should be on the admin badges page
    And I should see "Badges" within "#header a.active"
    Examples:
      | tab | path |
      | Volunteers | admin volunteers page |
      | Events | admin events page |
      | Locations | admin locations page |
      | Region | admin regions page |