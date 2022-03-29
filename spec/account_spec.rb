# frozen_string_literal: true

require_relative '../lib/transaction'
require 'account'

describe Account do
  describe '#set up a new account' do
    it 'tests initialising a new account' do
      transactions = []
      balance = 0
      expect(Account.new(transactions, balance)).to be_instance_of Account
    end
  end

  describe '#add transaction to account' do
    it 'tests adding a deposit to the account' do
      account = Account.new([], 0)
      trans = Transaction.new('2023-01-10 00:00:00', 1000.00)
      account.add_transaction(trans)
      expect(account.balance).to eq 1000
    end

    it 'tests adding a withdrawal to the account' do
      account = Account.new([], 0)
      trans1 = Transaction.new('2023-01-10 00:00:00', 1000.00)
      trans2 = Transaction.new('2023-01-13 00:00:00', 2000.00)
      trans3 = Transaction.new('2023-01-14 00:00:00', -500.00)
      account.add_transaction(trans1)
      account.add_transaction(trans2)
      account.add_transaction(trans3)
      expect(account.balance).to eq 2500
    end
  end
end
