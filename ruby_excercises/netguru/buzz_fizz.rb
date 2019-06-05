class Buzz_Fizz

  attr_accessor :value

  def initialize (value)
    @value = value
  end


  def check_value

    if check_divides_per_five and check_divides_per_three
      return "Fizz"
    elsif check_divides_per_five
      return "Buzz"
    elsif check_divides_per_five
      return "Foo"
    else
      return value
    end
  end

  private

  def check_divides_per_five
    value % 5 == 0
  end

  def check_divides_per_three
    value % 3 == 0
  end

end

buzz_fizz = Buzz_Fizz.new(10)

puts buzz_fizz.check_value