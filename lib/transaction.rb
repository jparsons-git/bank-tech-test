# frozen_string_literal: true

# require_relative '../lib/transaction'

class Transaction
  attr_reader :date, :amount

  def initialize(date, amount)
    # @account_number
    # @ref = name
    @date = date
    @amount = amount
    # @credit? = credit
  end

end
