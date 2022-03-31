# Bank Tech Test

This challenge is to produce the requirements of the Bank Tech Test using TDD
and other stuff like that! 

## Scope and functionality
* There will not be a database implementation
* There will not be a user interface
* Inputs will be mocked and illustrated through the tests (I think)
* This will be tested through the rspec
* The use of rubocop to keep the code pretty
* Simplecov will be used for test coverage

## Motivation
Week 10 - Bank Tech Test

## Ruby version
3.0.0

## Creators
Jane

## Design
* The Class Diagram can be found under 'docs'

## User Stories
* So that a user can manage their money
* They would like to open a new bank account

* So that a user can save their money
* They would like to be able to deposit an monetry amount into their account

* So that a user can spend their money
* They would like to be able to withdrawal a monetry amount from their account
* after checking there is enough money to withdraw? Is this is requirement?

* So that a user can review activity on their account
* They would like to be able to view a statement which shows
* transactions in date order (current to past) and the resulting balance

## Example Statement

*      date || credit || debit || balance
*      14/01/2023 || || 500.00 || 2500.00
*      13/01/2023 || 2000.00 || || 3000.00
*      10/01/2023 || 1000.00 || || 1000.00

## How to run/test
* This project is self testing.
* To run some examples through node, please see the following:
* 
