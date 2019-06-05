require 'pry'


module CheeseBurger
  def cost
    super + 20
  end
end

module LargeBurger
  def cost
    super + 15

  end
end

class Burger
  def cost
    10
  end
end


#####DEMO

burger = Burger.new

puts burger.cost
puts (burger.extend(CheeseBurger)).cost
puts (burger.extend(LargeBurger)).cost


# decoration requires the same place in memory
cheese_burger = burger.extend(CheeseBurger)
large_burger = burger.extend(LargeBurger)

puts cheese_burger.cost
puts large_burger.cost

cheese_burger_price = (burger.extend(CheeseBurger)).cost
large_burger_price = (burger.extend(LargeBurger)).cost

puts cheese_burger_price
puts large_burger_price

#binding.pry



