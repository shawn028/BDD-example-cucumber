#Author: shawnlee61@gmail.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@ProgressChart
Feature: Test Progress chart on Onboarding UI.
  I want to see the Progress chart updating correctly in the right pane while completing tasks in the left pane.

	Background: 
		Given that the Onboarding Application is running
		And the Task UI is loading properly
		
  @RequiredTasks 
  Scenario: Count total Required task numbers 
    Given I want to count total Required task number
    When The left panel loaded
    Then Count the total number for Required tasks
    
  Scenario: NO Required tasks completed
    Given I want to validate progress chart while no Required tasks completed
    When No Required task completed
    Then Required task progress chart showing '0%'
    
  Scenario: All Required tasks completed
    Given I want to validate progress chart while all Required tasks completed
    When All Required task completed
    Then Required task progress chart showing '100%'  
    
  Scenario: Random number of Required tasks completed
  	Given I want to validate progress chart while random number of Required tasks completed
  	When Random number of Required task completed
    Then Required task progress chart showing rounded percentage of completion  
    
 @RequiredTask @DataMatrix
  Scenario Outline: Verify Required task progress chart
    Given I want to verify Required task progress chart while Required tasks completed
    When I complete the <number> of Required tasks
    Then Required task progress chart should display correct <Percentage>

    Examples: 
      | number        | Percentage  														 |
      | 0			        | 0%			 														 		 |
      | total number  | 100%     											       	 	 |
      | random number | Round(random number/total number) *100%  |
  
  @OptionalTasks
  Scenario: Count Optional task numbers 
    Given I want to count Optional task number
    When The left panel loaded
    Then Count the number for Optional tasks

	 Scenario: NO Optional tasks completed
    Given I want to validate progress chart while no Optional tasks completed
    When No Optional task completed
    Then Optional task progress chart showing '0%'
    
   Scenario: All Optional tasks completed
    Given I want to validate progress chart while all Optional tasks completed
    When All Optional task completed
    Then Optional task progress chart showing '100%'
    
   Scenario: Random number of Optional tasks completed
  	Given I want to validate progress chart while random number of Optional tasks completed
  	When Random number of Optional task completed
    Then Optional task progress chart showing rounded percentage of completion  
    
   @OptionalTask @DataMatrix
  Scenario Outline: Verify Optional task progress chart
    Given I want to verify Optional task progress chart while Optional tasks completed
    When I complete the <number> of Optional tasks
    Then Optional task progress chart should display correct <Percentage>

    Examples: 
      | number        | Percentage   					       					   |
      | 0			        | 0%		  						       							 |
      | total number  | 100% 											 							 |
      | random number | Round(random number/total number) *100%  |
