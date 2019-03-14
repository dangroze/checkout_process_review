require 'supermarket'

RSpec.describe Supermarket do
  subject(:supermarket) { described_class.new }
  
  it('Returns -1 for any illegal input') do
    expect(supermarket.checkout('1')).to eq(-1)
  end
end