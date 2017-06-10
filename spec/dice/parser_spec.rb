describe Dice::Parser do
  describe '#call' do
    it 'leaves initial options value when no arguments were given' do
      parser = Dice::Parser.new([])
      parser.call
      expect(parser.options).to be_empty
    end

    it 'assings faces option' do
      new_faces = 2
      parser = Dice::Parser.new(%W(--faces #{new_faces}))
      parser.call
      expect(parser.options[:faces]).to eql(new_faces)
    end

    it 'assings count option' do
      new_count = 4
      parser = Dice::Parser.new(%W(--count #{new_count}))
      parser.call
      expect(parser.options[:count]).to eql(new_count)
    end
  end
end
