class Person


  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end
=begin

  def self.print_out
    puts "something"
  end

  def self.create(params)
    @name = params[:name]
  end
=end

end

person = Person.new
person.set_name("wacek")
puts person.get_name

=begin

Person.new

person2 = Person.create(name: "John Doe")
puts person2
=end

