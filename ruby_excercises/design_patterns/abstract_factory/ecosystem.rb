require 'forest_organism_factory.rb'
class Ecosystem
  def initialize(organism_factory, number_animals: 0, number_plants: 0)
    @organism_factory = organism_factory

    @animals = []
    number_animals.times do |i|
      animal = @organism_factory.new_animal("Animal#{i}")
      @animals << animal
    end

    @plants = []
    number_plants.times do |i|
      plant  = @organism_factory.new_plant("Plant#{i}")
      @plants << plant
    end
  end

  def simulate_one_day
    @plants.each { |plant| plant.grow }
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end
end


jungle = Ecosystem.new(ForestOrganismFactory.new, number_animals: 1, number_plants: 4)
jungle.simulate_one_day


