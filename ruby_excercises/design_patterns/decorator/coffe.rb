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

  end

  def induce_sugar_rush

  end
end


coffee = Coffee.new

coffee_with_creme = CoffeeWithCream.new(coffee)

coffee_extrasugar = CoffeeWithSugar.new(coffee)

puts coffee_with_creme.price
puts coffee_extrasugar.price

#puts coffee.induce_sugar_rush
