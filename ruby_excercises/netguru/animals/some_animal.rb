private

class SomeAnimal

  def speak(animal_species)
    animal_species.speak
  end

end


class Dog < SomeAnimal

  def speak
    puts "Woow Woow!"
  end
end

class Cat < SomeAnimal

  def speak
    puts "Meoow!"
  end

end

class Fox < SomeAnimal

  def speak
    puts "I dont know how it speaks!"
  end

end

dog = SomeAnimal.new
cat = SomeAnimal.new
fox = SomeAnimal.new

dog.speak(Dog.new)
cat.speak(Cat.new)
fox.speak(Fox.new)















