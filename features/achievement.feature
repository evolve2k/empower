Feature: Achievement
  In order to acknowledge good work
  As an administrator
  I want to award achievements

  @wip
  Scenario: Volunteer for 7 months, badges exist for 1 year, 2 year and 10 years
    Given the following badges exist
      | name      | threshold | sql                         |
      | 1 month   | 30        | datediff(now(), created_at) |
      | 1 year    | 365       | datediff(now(), created_at) |
      | 100 years | 36500     | datediff(now(), created_at) |
    And a volunteer exists with created_at: "2009-04-01"
    When that volunteer is saved
    Then that volunteer should have the following badges:
      | 1 month |
      | 1 year  |
