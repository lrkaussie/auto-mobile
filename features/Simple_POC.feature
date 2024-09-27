Feature: Basic search feature

  Scenario: Search for pants and return result
    Given I'm on a Main page
    When I input pants on search field and submit search
    Then Search results should be shown