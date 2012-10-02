Feature: Change Username
  In order to allow users to feel at home
  we allow them to change their usernames.

  Background:
    Given a group "demo-group" with "furry@example.com" as admin
    And I am logged in as "furry@example.com"
    When I visit the settings page

  Scenario: Successful Change
    And I enter my desired name
    Then my name should be changed

  Scenario: Change to original name
    And I enter my current name
    Then my name should stay the same