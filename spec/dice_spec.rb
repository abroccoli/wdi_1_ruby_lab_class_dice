require_relative '../lib/dice'

RSpec.describe Dice do
  let (:sides) {8}
  subject(:dice) {Dice.new(sides)}

  describe '#initialize' do
    it 'creates a new instance of a Dice with a number of sides' do
      expect(dice).to be_a Dice
    end
  end

  describe '#roll' do
    it 'display the random value of a dice roll' do
      expect(dice.roll).to be_between(1, sides).inclusive
    end
  end

end
