# frozen_string_literal: true

require_relative '../lib/transaction'
require_relative '../lib/statement'
require 'date'

# Account defintion
class Account
  attr_reader :transactions, :balance

  def initialize(transactions, balance)
    @transactions = transactions
    @balance = balance
  end

  def add_transaction(trans)
    if trans.amount.negative? && trans.amount.abs.to_f > @balance.to_f
      puts 'There are insufficient funds to withdraw this amount.'
    else
      @transactions.push(trans)
      @balance += trans.amount.to_i
    end
  end

  def show_statement
    puts 'date            || credit    || debit     || balance'
    i = 0
    while i < statement_rows.length
      if statement_rows[i].amount.negative?
        puts format("#{statement_rows[i].date}      ||           || % 9.2f || % 9.2f",
                    statement_rows[i].amount.abs.to_f.to_s, statement_rows[i].balance)
      else
        puts format("#{statement_rows[i].date}      || % 9.2f ||           || % 9.2f",
                    statement_rows[i].amount.abs.to_f, statement_rows[i].balance)
      end
      i += 1
    end
  end

  def statement_rows
    i = 0
    running_balance = 0
    statement_rows = []
    while i < @transactions.length
      running_balance += @transactions[i].amount.to_f
      statement = Statement.new(@transactions[i].date, @transactions[i].amount, running_balance)
      statement_rows.push(statement)
      i += 1
    end
    statement_rows.reverse!
  end
end

account = Account.new([], 0)
account.add_transaction(Transaction.new('2023-01-10', 1000.00))
account.add_transaction(Transaction.new('2023-01-13', 2000.00))
account.add_transaction(Transaction.new('2023-01-14', -500.00))
account.show_statement
