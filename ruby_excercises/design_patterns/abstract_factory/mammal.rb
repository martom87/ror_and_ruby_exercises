require_relative 'animal.rb'

class Mammal < Animal
  def eat
    puts "Mammal #{name} is eating anything it wants."
  end

  def speak
    puts "Mammal #{name} Roars!"
  end

  def sleep
    puts "Mammal #{name} sleeps anywhere it wants."
  end
end