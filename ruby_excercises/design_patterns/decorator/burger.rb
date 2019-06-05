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

puts "DEMO1"
puts "The purger cost is #{burger.cost} \n
The cheesburger cost #{(burger.extend(CheeseBurger)).cost} \n
The largeburger cost is #{(burger.extend(LargeBurger)).cost} \n
The #{burger.equal?((burger.extend(CheeseBurger))) && burger.equal?((burger.extend(LargeBurger))) } "


cheeseBurger = burger.extend(CheeseBurger)


puts " Now the three burgers are created as three seperated objects their price is the same #{burger.cost} #{cheeseBurger.cost}\n
     #{burger.eql?(cheeseBurger)}"

###############3


class LargerBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 15
  end
end

burger2 = Burger.new
large_burger = LargerBurger.new(burger2)
extra_large_burger = LargerBurger.new(large_burger)

puts " burger2 cost : #{burger2.cost} large_burger cost #{large_burger.cost} extra large cost:  #{extra_large_burger.cost} "


##################
class BurgerDecorator < SimpleDelegator

  def initialize(burger)
    @burger = burger
    super
  end

  def give_callories
    "1000 kcal"
  end

end

burger3 = Burger.new
some_burger = BurgerDecorator.new(burger3)

puts some_burger.give_callories
