#Author: shawnlee61@gmail.com
@ProgressChart
Feature: Test Progress chart on Onboarding UI.
  I want to see the Progress chart updating correctly in the right pane while completing tasks in the left pane.

  @RequiredTasks @TotalNumber
  Scenario: Count total Required task numbers
    Given the Task UI is loading properly
    When The left panel loaded
    Then Count the <RequiredTaskTotalNumber> for Required tasks

  @RequiredTasks @DataMatrix
  Scenario Outline: Validate Required task progress
    Given I want to validate progress chart while number of Required tasks completed
    When <RequiredTaskCompletionNumber> of Required task completed
    Then Required task progress chart showing <RequiredTaskPercentage>

    Examples: 
      | RequiredTaskCompletionNumber   | RequiredTaskPercentage                                                   |
      |                              0 | 0%                                                                       |
      | <RequiredTaskTotalNumber>      | 100%                                                                     |
      | <RequiredTaskCompletionNumber> | Rounding(<RequiredTaskCompletionNumber>/<RequiredTaskTotalNumber>) *100% |

  @OptionalTasks @TotalNumber
  Scenario: Count total Optional task numbers
    Given the Task UI is loading properly
    When The left panel loaded
    Then Count the <OptionalTaskTotalNumber> for Optional tasks

  @OptionalTasks @DataMatrix
  Scenario Outline: Validate Optional task progress
    Given I want to validate progress chart while number of Optional tasks completed
    When <OptionalTaskCompletionNumber> of Optional task completed
    Then Optional task progress chart showing <OptionalTaskPercentage>

    Examples: 
      | RequiredTaskCompletionNumber   | RequiredTaskPercentage                                                   |
      |                              0 | 0%                                                                       |
      | <OptionalTaskTotalNumber>      | 100%                                                                     |
      | <OptionalTaskCompletionNumber> | Rounding(<OptionalTaskCompletionNumber>/<OptionalTaskTotalNumber>) *100% |
