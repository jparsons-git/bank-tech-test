# frozen_string_literal: true

require_relative '../lib/transaction'
require 'account'

describe Account do
  let(:account) { Account.new([], 0) }
  describe '#set up a new account' do
    it 'tests initialising a new account' do
      expect(account).to be_instance_of Account
    end
  end

  describe '#add transaction to account' do
    it 'tests adding a DEPOSIT transaction to the account' do
      # trans = Transaction.new('2023-01-10 00:00:00', 1000.00)
      account.add_transaction(Transaction.new('2023-01-10', 1000.00))
      expect(account.balance).to eq 1000
    end

    it 'tests adding a WITHDRAWAL transaction to the account' do
      # account = Account.new([], 0)
      # trans1 = Transaction.new('2023-01-10 00:00:00', 1000.00)
      # trans2 = Transaction.new('2023-01-13 00:00:00', 2000.00)
      # trans3 = Transaction.new('2023-01-14 00:00:00', -500.00)
      account.add_transaction(Transaction.new('2023-01-10', 1000.00))
      account.add_transaction(Transaction.new('2023-01-13', 2000.00))
      account.add_transaction(Transaction.new('2023-01-14', -500.00))
      expect(account.balance).to eq 2500
    end

    it 'tests adding a WITHDRAWAL transaction to the account with insufficient funds' do
      # account = Account.new([], 0)
      # trans1 = Transaction.new('2023-01-10 00:00:00', 599.99)
      # trans2 = Transaction.new('2023-01-14 00:00:00', -600.00)
      account.add_transaction(Transaction.new('2023-01-10', 599.99))
      expect do
        account.add_transaction(Transaction.new('2023-01-14', -600.00))
      end.to output("There are insufficient funds to withdraw this amount.\n").to_stdout
    end
  end

  describe '#show statement' do
    it 'tests outputting a statement in the right order' do
      account.add_transaction(Transaction.new('2023-01-10', 1000.00))
      account.add_transaction(Transaction.new('2023-01-13', 2000.00))
      account.add_transaction(Transaction.new('2023-01-14', -500.00))
      expect do
        account.show_statement
      end.to output("date            || credit    || debit     || balance\n2023-01-14      ||           ||    500.00 ||   2500.00\n2023-01-13      ||   2000.00 ||           ||   3000.00\n2023-01-10      ||   1000.00 ||           ||   1000.00\n").to_stdout
    end
  end
end
