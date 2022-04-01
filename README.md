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
* They would like to be able to withdraw a monetary amount from their account

* So that a user can only spend money they have available
* They would like the account to reject withdrawal amounts where there are insufficient funds

* So that a user can review activity on their account
* They would like to be able to view a statement which shows
* transactions in current to past date order and the running balance

## How set up the project repo
* To pull down and set up, run
* 
*           git clone https://github.com/jparsons-git/bank-tech-test.git
* then run
*           bundle install

## How to run/test
* 
* To run an example through irb, please see the following:
* 
* From the project route directory in the terminal, go into the irb by using this command
*              irb -r ./lib/account.rb
*
* then from the > prompt in irb, type in the following commands
*           > account = Account.new([], 0)
*           > account.add_transaction(Transaction.new('2023-01-10', 1000.00))
*           > account.add_transaction(Transaction.new('2023-01-13', 2000.00))
*           > account.add_transaction(Transaction.new('2023-01-14', -500.00))
*           > account.show_statement

* This should give you an example statement which looks like this

*           date            || credit    || debit     || balance
*           2023-01-14      ||           ||    500.00 ||   2500.00
*           2023-01-13      ||   2000.00 ||           ||   3000.00
*           2023-01-10      ||   1000.00 ||           ||   1000.00

## TODO's and Future Development
* Reformatting of the date from yyyy-mm-dd to 
* Take the "balance" attribute from the account.rb class - it is not required for this implementation
* Redefine the method 'statement_rows' in the account class as a 'private' method


## Questions for the Reviewer
* How to make longer lines of code pass rubocop
* Advice on what funcationality should be in a feature test - there are just unit tests here
* Some tips on how to use mocking and doubling more effective 
* Perhaps soem tips on String formatting - although I think I could finesse what I've done