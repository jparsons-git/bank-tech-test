# frozen_string_literal: true

# require_relative '../lib/transaction'

# Statement defintion
class Statement
  attr_reader :date, :amount, :balance

  def initialize(date, amount, balance)
    @date = date
    @amount = amount
    @balance = balance
  end
end
