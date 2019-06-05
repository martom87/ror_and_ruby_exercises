require 'pry'

class Animal
  DEFAULT_SOUND = nil

  attr_accessor :name, :color, :sound

  def initialize(name, color, sound = nil)
    @name = name
    @color = color
    @sound = sound || DEFAULT_SOUND
  end

  def speak
    puts @sound
  end
end

class Dog < Animal
  DEFAULT_SOUND = 'Woof!'
end

class AnimalSerializer
  def initialize(animal)
    @animal = animal
  end

  def serialize
    [
        @animal.class,   #wrapped_dog.class
        @animal.name,    #wrapped_dog.name
        @animal.color,   #wrapped_dog.color
        @animal.sound
    ].join(',')
  end

  def self.deserialie(text)
    array = text.split(',')

    output = Object.const_get(array.shift)
        .new(*array)
    output
   # binding.pry

  end
end


dog = Dog.new('burek','grey')

wrapped_dog = AnimalSerializer.new(dog)

doggy = wrapped_dog.serialize

deserialized_doggy = AnimalSerializer.deserialie(doggy)


puts dog
puts wrapped_dog
puts doggy
puts deserialized_doggy














