# frozen_string_literal: true

require_relative '../lib/transaction'
require 'account'

describe Account do
  subject(:account) { described_class.new }
  account = Account.new([], 0)

  describe '#set up a new account' do
    it 'tests initialising a new account' do
      transactions = []
      balance = 0
      expect(Account.new(transactions, balance)).to be_instance_of Account
    end
  end

  describe '#add transaction to account' do
    it 'tests adding a deposit to the account' do
      trans = Transaction.new('2023-01-14 00:00:00', 2500.00)
      account.add_transaction(trans)
      expect(account.balance).to eq 2500
    end
  end
end
