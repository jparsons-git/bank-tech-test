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

  # describe '#get a roll for a frame' do
  #   it 'tests setting one single roll' do
  #     roll = Roll.new(1,1,6)
  #     expect(Roll.get_score(1,1)).to eq 6
  #   end
  # end
end
