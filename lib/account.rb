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
end

# so here will be the text scripts
# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00

puts 'Start'
currentDate = Date.today
puts "Date: #{currentDate}"
puts 'End'
