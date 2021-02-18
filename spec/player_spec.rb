require 'player'

describe Player do
  subject(:christine) { Player.new('Christine') }
  subject(:hannah) { Player.new('Hannah') }

  describe '#name' do
    it 'returns the name' do
      expect(christine.name).to eq 'Christine'
    end
  end

  describe '#hit_points' do
    it 'returns the default hit points to a new instance' do
      expect(christine.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hit points" do
      expect { hannah.receive_damage }.to change { hannah.hit_points }.by(-10)
    end
  end
end
