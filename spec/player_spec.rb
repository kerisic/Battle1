require 'player'

describe Player do
  subject(:christine) { Player.new('Christine') }

  describe '#name' do
    it 'returns the name' do
    expect(christine.name).to eq 'Christine'
    end
  end
end
