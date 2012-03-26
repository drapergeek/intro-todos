Feature: Add todo
  In order to track thigns I need to do
  I should be able to create a new todo

  Scenario: Create a todo
    Given I have signed in
    When I create a todo titled "Buy some milk on the way home"
    Then "Buy some milk on the way home" should be in my list of things to do
 
  Scenario: Create an invalid todo
    Given I have signed in
    When I create a todo without a title
    Then I should have no todos
    And I should see a message telling me the todo needs a title




