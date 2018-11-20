@api
Feature: I can see the comments for a post

  Scenario: Check comments from a post are fetched
    Given I call the api to get the comments from a post
    Then I should get the comments returned