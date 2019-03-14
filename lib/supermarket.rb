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
    sum = 0
    string.split('').each do |item|
      sum += @price[item.to_sym]
    end
    sum += add_discount(string)
  end

  def add_discount(string)
    discount = 0
    discount += string.count('A') / 3 * -20
    discount += string.count('B') / 2 * -15
  end

end