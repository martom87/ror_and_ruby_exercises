require 'mammal'
class ForestOrganismFactory

  def new_animal(name)
    Mammal.new(name)
  end

  def new_tree(name)
    Tree.new(name)
  end

end