class SomeAnimal



  def speak(animal_type)
    animal_type.speak
  end
end

class Dog < SomeAnimal

  def tweet
    puts "Woow"
  end
end

class Cat < SomeAnimal
  def tweet
    puts "Meeow"
  end
end

some_animal = SomeAnimal.new

some_animal.speak(Dog.new)

some_animal.speak(Cat.new)