class Supermarket

  def initialize
    @price = {
      A: 50,
      B: 30,
      C: 20,
      D: 15
    }
  end

  def checkout(string)
    return -1 if (string =~ /\d/) || string.include?('-') || string.upcase != string
    string.split('').reduce(0) do |sum, item|
      sum += @price[item.to_sym]
    end
  end

end