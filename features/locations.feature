Feature: Locations
  As a regional manager
  I want to be able to manage details of locations
  In order to know where rugs are being sold

  # Not logged, visiting location index page
  # Not logged in, visiting new location page
  # Logged in, visiting new location page

  Scenario: Visiting create location page
    Given I am logged in as "lilian@gmail.com"
    When I go to the new admin location page
    And fill in the following:
      | name | Bondi Markets |
      | address | 15 Seaview Street |
      | suburb | Bondi |
      | postcode | 2999 |
      | contact name | jane friendly |
      | contact phone | 02 9111 8888 |
      | contact email | jane@bondimarkets.com.au |
      | web address | www.bondimarkets.com.au |
    And press "Create Location"
    Then I should see "Successfully created"
    And should see "15 Seaview Street"
    And a location should exist with name: "Bondi Markets", address: "15 Seaview Street", suburb: "Bondi"
