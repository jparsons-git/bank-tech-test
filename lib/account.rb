# frozen_string_literal: true

require_relative '../lib/transaction'

class Account
  # attr_reader :name, :number, :transactions, :balance
  attr_reader :transactions, :balance

  def initialize(transactions, balance)
    @transactions = transactions
    @balance = balance
  end

end

# so here will be the text scripts


# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00

