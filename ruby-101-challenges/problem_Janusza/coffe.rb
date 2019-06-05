require 'pry'

class Coffee
  attr_accessor :price

  def price
    2.50
  end

end


class CoffeeWithCream

  def initialize(coffee)
    @coffee = coffee
  end

  def price
    @coffee.price += 0.50

  end

end

class CoffeeWithSugar

  def initialize(coffee)
    @coffee = coffee
  end


  def price
    @coffee.price += 0.25
    binding.pry


  end

  def induce_sugar_rush

  end

end


coffee = Coffee.new

coffee = CoffeeWithCream.new(coffee)

#coffee = CoffeeWithSugar.new(coffee)

puts coffee.price

#puts coffee.induce_sugar_rush
