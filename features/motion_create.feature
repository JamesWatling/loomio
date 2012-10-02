# Feature: Create Proposal
#   In order to make the site a productive place
#   Users must be able to create proposals

#   Background:
#     Given a group "demo-group" with "furry@example.com" as admin
#     And I am logged in as "furry@example.com"

  Scenario: Create Proposal as Group User
    Given a group is created
    And I am on a group page
    When I click create proposal
    And fill in the proposal details
    Then a new proposal should be created
