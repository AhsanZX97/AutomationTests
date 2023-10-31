Feature: Green Kart features
Scenario: Homepage is visible
  Given I navigate to the Green Kart homepage 
  Then I should see the Green Kart homepage

Scenario: Searching for item
  Given I input carrot into the search bar and clicked the search button
  Then I should see carrot in the results

Scenario: Searching for an invalid item
  Given I input Pizza into the search bar and clicked the search button
  Then I should see no results

