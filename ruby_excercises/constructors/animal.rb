private
class Animal
  attr_accessor :species, :mass

  def initialize(species, mass)
    @species = species
    @mass = mass
  end

end

puts "DEMO1"

elephant = Animal.new('elephant', '2 tones')
puts "#{elephant.species} weights #{elephant.mass}"

###########################################################################

class Human

  attr_accessor :name, :age, :animal

  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @animal = params[:animal]
  end

end

puts "DEMO2"

human1 = Human.new(name: "wacek", age: 12, animal: (elephant.species))
human2 = Human.new(:name => "wiesiek", :age => 32, :animal => (elephant.species))


puts " One way of colons : #{human1.name} is #{human1.age} years old and has an animale which is the #{human1.animal}"
puts " Second Way of colons : #{human2.name} is #{human2.age} years old and has an animal which is the #{human2.animal} "

###########################################################################


class Man

  attr_accessor :name, :age

  def self.create(params)
    @name = params[:name]
    @age = params[:age]
  end
end

puts "DEMO3"

staszek = Man.create(name: "staszek", age: 40)

begin

  puts staszek.name
rescue NoMethodError => e
  puts "The is because #{e.message}"
end

###########################################################################


class Woman

  attr_accessor :name, :age

  def initialize (name, age)
    @name = name
    @age = age
  end

end

puts "DEMO4"

woman = Woman.new("Halyna", 56)

puts "The wife of janusz is #{woman.name}"

###########################################################################


class Girl

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @@age = age
  end

end
puts "DEMO5"
girl = Girl.new("jesica", 17)

