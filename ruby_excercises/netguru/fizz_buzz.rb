class FizzBuzz


  attr_accessor :value, :value2

  def initialize (value)
    @value = value
  end


  def check_value

    if value % 3 == 0 and value % 5 == 0
      return "Fizz"
    elsif value % 5 == 0
      return "Buzz"
    elsif value % 3 == 0
      return "Foo"
    else
      return value
    end
  end

  def check_value2(value2)
    if value2 % 3 == 0 and value2 % 5 == 0
      return "Fizz"
    elsif value2 % 5 == 0
      return "Buzz"
    elsif value2 % 3 == 0
      return "Foo"
    else
      return value2
    end
  end


=begin
  def check_value(value)

    if value % 3 == 0 and value % 5 == 0
      return "Fizz"
    elsif value % 5 == 0
      return "Buzz"
    elsif value % 3 == 0
      return "Foo"
    else
      return value
    end
  end
=end

end

fizz_buzz = FizzBuzz.new(15)


puts "for value #{fizz_buzz.value} we have #{fizz_buzz.check_value} "

fizz_buzz.value = 10

puts "After accessor we set new value which is  #{fizz_buzz.value} and, we have #{fizz_buzz.check_value} for this value"

puts "This is the result for the declaration of another method #{fizz_buzz.check_value2(20)}"

fizz_buzz.value2 = 500

puts "This is the field declared outside the class constructor #{fizz_buzz.value2}"

puts "This is the result of the method that accepts value2 thet was declared without the constructor #{fizz_buzz.check_value2(fizz_buzz.value2)}"


puts fizz_buzz.check_value


class SecondFizzBuzz


  attr_accessor :value, :value2

  def initialize (value)
    @value = value
  end


  def check_value()

    if value % 3 == 0 and value % 5 == 0
      return "Fizz"
    elsif value % 5 == 0
      return "Buzz"
    elsif value % 3 == 0
      return "Foo"
    else
      return value
    end
  end

  def check_value2(value2)
    if value2 % 3 == 0 and value2 % 5 == 0
      return "Fizz"
    elsif value2 % 5 == 0
      return "Buzz"
    elsif value2 % 3 == 0
      return "Foo"
    else
      return value2
    end
  end
end


