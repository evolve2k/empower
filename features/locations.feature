Feature: Locations
As a regional manager
I want to be able to manage details of locations
In order to know where rugs are being sold

# Not logged, visiting location index page
# Not logged in, visiting new location page
# Logged in, visiting new location page

@wip
Scenario: Visiting create location page
  Given I am logged in as "lilian@gmail.com"
  When I go to the new admin locations page
  And fill in the following:
    | name | Bondi Markets |
    | address | 15 Seaview Street |
    | suburb | Bondi |
    | postcode | 2999 |
    | contact_name | jane friendly |
    | contact_phone | 02 9111 8888 |
    | contact_email | jane@bondimarkets.com.au |
    | web_address | www.bondimarkets.com.au |
  And press "Create location"
  Then I should see "Location created successfully"
  And should see "15 Seaview Street" within ".address"
  And should see "Bondi" within ".address .suburb"
  And should see "Bondi" within ".address .suburb"
  And should see "jane friendly" within ".contact_name"
  And should see "02 9111 8888" within ".contact_phone"
  And should see "jane@bondimarkets.com.au" within ".contact_email"
  And should see "2999" within ".address .postcode"
  And should see "www.bondimarkets.com.au" under "web_address"
