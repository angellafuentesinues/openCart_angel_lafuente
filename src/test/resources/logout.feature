@logout
Feature: Logout test suite

  Background:
    Given the user is on the home page
    And the user click on home login button

  @smoke
    @logoutOK
  Scenario Outline: Check the logout
    And the user provides the mail "<mail>"
    And the user provides the password "<password>"
    And the user clicks the login button
    When the user clicks the logout button
    Then the user is in the logout page
    Examples:
      | mail           | password |
      | sutto@mail.com | sutto     |

