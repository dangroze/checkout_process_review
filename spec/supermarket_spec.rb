require 'supermarket'

RSpec.describe Supermarket do
  subject(:supermarket) { described_class.new }
  
  describe('#checkout') do
    it('Returns -1 for any illegal input') do
      expect(supermarket.checkout('1-A')).to eq(-1)
    end
    it('Returns the total for valid items') do
      expect(supermarket.checkout('ABCD')).to eq(115)
    end
  end
  describe('#add_discount') do
    it('Calculates a discount for multiple items') do
      expect(supermarket.checkout('AAABB')).to eq(175)
    end
  end
end