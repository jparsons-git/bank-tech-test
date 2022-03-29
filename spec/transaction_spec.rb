# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe '#set/create a transaction' do
    it 'tests creating a deposit' do
      date = '2011-11-06 00:00:00'
      amount = 1000
      # expect(Transaction.new(2011-11-06 00:00:00, 1000)).to be_instance_of Transaction
      expect(Transaction.new(date, amount)).to be_instance_of Transaction
    end
  end
end
