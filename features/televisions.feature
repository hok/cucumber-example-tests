Feature: Television reviews
  In order to find out which television to buy
  The end-users
  Want to compare television features and prices

  Scenario: Initial television listing
    Given the user is on the TV reviews page
    Then they should see a list of televisions

  Scenario: Add TVs to comparison tool
    Given the user is on the TV reviews page
    When the user selects a TV for comparison
    Then the TV is added to the comparison tool

  Scenario: Displaying all filtering options with the Show more link
    Given the user is on the TV reviews page
    When the user selects to see more filter criteria for "retailers"
    Then the number of available options for "retailers" has increased

  Scenario: Filtering televisions by brand
    Given the user is on the TV reviews page
    When the user filters the TVs by brand
    Then all listed TVs are of the same brand

  Scenario: Sorting televisions by price
    Given the user is on the TV reviews page
    When the user sorts the TVs by "Price (high to low)"
    Then the TV list is sorted by "Price (high to low)"

  @not_implemented
  Scenario: Filtering televisions by screen size

  @not_implemented
  Scenario: Filtering televisions by price

  @not_implemented
  Scenario: Filtering televisions by Which recommends

  @not_implemented
  Scenario: Filtering televisions by type

  @not_implemented
  Scenario: Filtering televisions by features

  @not_implemented
  Scenario: Filtering televisions by retailers

  @not_implemented
  Scenario: Loading more televisions when navigation to the bottom of the page

  @not_implemented
  Scenario: Remove TVs from the comparison tool

  @not_implemented
  Scenario: Compare TVs in the comparison tool
   
  @not_implemented
  Scenario: Navigate to a TV product page
    
  @not_implemented
  Scenario: Navigating between televisions page tabs

  @not_implemented
  Scenario: Sign-up popup
    Given the user is a first time visitor
    When the user navigates to the TV reviews page
    Then the user is shown the 'Hot or Not?' popup
    
  @not_implemented
  Scenario: Dismissing the sign-up popup
    Given the user is shown the 'Hot or Not?' popup
    When the user dismisses the popup
    Then popup is not displayed
