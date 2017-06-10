describe Dice do
  it 'returns a number when called in shell' do
    expect(`dice`).to match(/\d\n/)
  end
end
