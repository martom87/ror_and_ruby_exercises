class Animal

  attr_accessor :name, :species, :height, :weight, :voice

  def set_name(new_name)
    if new_name.is_a?(Numeric)
      puts "The name cannot be a a number"
    else
      @name = new_name
    end
  end

  def set_species(new_species)
    if new_species.is_a?(Numeric)
      puts " The species cannot be a number"
    end
  end



end

