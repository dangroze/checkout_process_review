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
end