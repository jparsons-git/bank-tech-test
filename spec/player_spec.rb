# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player) { described_class.new }

  frames = []
  player = Player.new(1, 'Donald Duck', frames, 0)

  let(:first_roll) { double :roll }

  # it 'has an entry_station' do
  #   journey = Journey.new("Victoria", "Green Park")
  #  expect(journey.entry_station).to eq "Victoria"
  # end

  # let(:min_journey_balance) {Oystercard::MIN_JOURNEY_BALANCE}
  # let(:max_card_balance) {Oystercard::MAX_CARD_BALANCE}
  # let(:entry_station) {double :station}
  # let(:exit_station) {double :station}
  # let(:journey) { {entry_station: entry_station, exit_station: exit_station} }

  describe '#set up a player"s scorecard' do
    it 'tests initialising a Players score card' do
      name = 'Donald Duck'
      frames = []
      player_total = 0
      expect(Player.new(1, name, frames, player_total)).to be_instance_of Player
    end
  end

  describe '#first roll, first frame' do
    it 'tests initialising a Players score card' do
      # roll1 = Roll.new(1,1,1)
      frame1 = Frame.new(1, 0, 0, 0, 0)
      player.bowl(frame1, 1)
      expect(frame1.total_score).to eq 1
      expect(frame1.num_of_rolls).to eq 1
    end
  end
end