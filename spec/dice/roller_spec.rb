describe Dice::Roller do
  describe '#call' do
    it 'prints a rolled value' do
      rolled_value = 4
      roller = Dice::Roller.new
      allow(roller).to receive(:roll) { rolled_value }
      expect(STDOUT).to receive(:puts).with(rolled_value)
      roller.call
    end

    it 'prints a rolled value a given number of times' do
      rolled_value = 4
      rolls_count = 3
      roller = Dice::Roller.new(count: rolls_count)
      allow(roller).to receive(:roll) { rolled_value }
      expect(STDOUT).to receive(:puts).exactly(rolls_count).times.with(rolled_value)
      roller.call
    end
  end

  describe '#roll' do
    it 'returns an instance of Integer' do
      roller = Dice::Roller.new
      expect(roller.roll).to be_kind_of(Integer)
    end

    it 'returns a number in a given range' do
      maximum = 10
      roller = Dice::Roller.new(faces: maximum)
      expect(1..maximum).to cover(roller.roll)
    end
  end
end
