Feature: View todos I own
  In order to determine what I need to accomplish
  As a user
  I should be able to see all my todos

  Scenario: View my todos
    Given the following todos exist:
      | title | owner|
      | Buy milk   | me@example.com |
      | Buy eggs   | me@example.com |
      | Buy cheese | me@example.com |
    Given  I have signed in as "me@example.com"
    Then I should see the following todos:
      | Buy milk   |
      | Buy eggs   |
      | Buy cheese |

  Scenario: View only my todos
    Given the following todos exist:
      | title | owner|
      | Buy milk   | me@example.com |
      | Buy eggs   | me@example.com |
      | Buy bread  | not_me@example.com |
      | Buy cheese | stupid@example.com |
    Given  I have signed in as "me@xample.com"
    Then I should not see the following todos:
      | Buy bread  |
      | Buy cheese |

