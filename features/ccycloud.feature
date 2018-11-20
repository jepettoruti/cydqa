@ccycloud
Feature: I can make a conversion

  Scenario: Authenticate to the service
    Given I call the api to authenticate  
    Then I should get the auth_token returned


# ● Authenticate against the API and retrieve a login token
# ● Create aquote for Selling GBP and buying USD using the sell side ● Verify the buy amount is correct to the rate
# ● Create another quote but perform a negative assertion
# ● End the API Session