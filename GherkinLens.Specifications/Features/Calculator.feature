@Calculator
Feature: Calculator

Simple calculator for adding two numbers

Background:
	Given that the allowed types are the following
		| CalculationType |
		| Addition        |
	
@Addition
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120
	
@Addition
@MultipleNumbers
Scenario Template: Add multiple numbers
	Given the first number is <firstNumber>
	And the second number is <secondNumber>
	And the third number is <thirdNumber>
	When the two numbers are added
	Then the result should be <expectedResult>

Scenarios: 
	| firstNumber | secondNumber | thirdNumber | expectedResult |
	| 10          | 10           | 10          | 30             |
	| 15          | 15           | 15          | 45             |