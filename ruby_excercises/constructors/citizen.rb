class Citizen

  #constructor

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @age = params[:age]
  end

  def get_name
    @name
  end

  def get_params
    @params = {:id => @id, :name => @name, :age => @age}
  end

  def citizen_data
    data = [@params[:id],@params[:name], @params[:age]]
     data.each do |d|
       print d
     end
  end

end

##DEMO
citizen = Citizen.new(id: 324, name: "wacek", age: 72)
puts citizen.get_name
name = (citizen.get_params)[:id]
puts name
citizen.citizen_data


class City

  def initialize(cityName = "No city provided", population = 0)
    @cityName = cityName
    @population = population
  end

  def get_name
    @cityName
  end


end

##Demo
krakow = City.new("Krakow", 30000)
print krakow.get_name


