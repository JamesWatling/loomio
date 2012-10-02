Feature: Create Group
  In order to allow users make decisions as a collective
  Users must be able to create groups

  Background:
    And a group "demo-group" with "furry@example.com" as admin
    And I am logged in as "furry@example.com"

  Scenario: Create public, open invite Group as Group Admin
    When I click create group
    And I select public, open invite
    And I fill in the group details
    Then I should see "Group created successfully"

  Scenario: Create private, open invite Group as Group Admin
    When I click create group
    And I select private, open invite
    And I fill in the group details
    Then I should see "Group created successfully"

  Scenario: Create public, member-only invite Group as Group Admin
    When I click create group
    And I select public, member-only
    And I fill in the group details
    Then I should see "Group created successfully"

  Scenario: Create private, member-only invite Group as Group Admin
    When I click create group
    And I select private, member-only
    And I fill in the group details
    Then I should see "Group created successfully"