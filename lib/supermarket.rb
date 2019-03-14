class Supermarket

  def checkout(string)
    return -1 if (string =~ /\d/) || string.include?('-') || string.upcase != string

  end

end