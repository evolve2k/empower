Feature: Navigation
  In order to navigate the site
  As a user
  I want to click through tabs and menus etc.


  Scenario Outline: Logged in users can use tabs
    Given I am logged in as "lilian@gmail.com"
    When I follow "<tab>"
    Then I should see "<tab>" within "#header a.active"
    And I should be on the admin <tab> page
    Given there are no badges
    When I follow "badges"
    Then I should be on the new admin badge page
    And I should see "badges" within "#header a.active"
    Given a badge exists
    When I follow "badges"
    Then I should be on the admin badges page
    And I should see "badges" within "#header a.active"
    When I follow "region"
    Then I should see "region" within "#header a.active"
    And I should be on the admin regions page
    Examples:
      | tab |
      | volunteers |
      | events |
      | locations |