=begin
Define a new class that has following methods:
                                          constructor, that takes Animal object as a parameter
serialize, instance method which serializes Animal object in such format:
                                                                      type_of_animal;name;color;sound;
i.e "dog;Brian;white;I am a writer"
deserialize, class method which takes serialized data and creates correct TypeOfAnimal object.
    i.e AnimalSerializer.deserialize("dog;Brian;white;I am a writer") # new Dog object
=end

private

class SomeMammals


  def initialize(type_animal)
    @type_animal = type_animal

  end

  def deserialize
    puts "Animal data:   #{@type_animal.name} is a type of #{@type_animal.class} it is #{@type_animal.color} and #{@type_animal.sound}s"
  end


end

class Dog < SomeMammals

  attr_accessor :name, :color, :sound

  def initialize (name, color, sound)
    @name = name
    @color = color
    @sound = sound

  end

end
##DEMO
dog = Dog.new('lajka', 'grey', 'woof')
some_animal = SomeMammals.new(dog)
some_animal.deserialize


