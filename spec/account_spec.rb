# frozen_string_literal: true

require_relative '../lib/transaction'
require 'account'

describe Account do
  # subject(:account) { described_class.new }
  # account = Account.new([], 0)

  describe '#set up a new account' do
    it 'tests initialising a new account' do
      transactions = []
      balance = 0
      expect(Account.new(transactions, balance)).to be_instance_of Account
    end
  end
end
