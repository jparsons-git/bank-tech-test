# frozen_string_literal: true

require_relative '../lib/transaction'
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

  def show_statement(account)
    puts 'date            || credit    || debit     || balance'
    i = 0
    running_balance = 0
    while i < account.transactions.length
      running_balance += account.transactions[i].amount.to_f
      if account.transactions[i].amount.negative?
        puts format("#{account.transactions[i].date}      ||           || % 9.2f || % 9.2f",
                    account.transactions[i].amount.abs.to_f.to_s, running_balance)
      else
        puts format("#{account.transactions[i].date}      || % 9.2f ||           || % 9.2f",
                    account.transactions[i].amount.abs.to_f, running_balance)
      end
      i += 1
    end
  end
end
