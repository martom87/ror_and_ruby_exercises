class Conditional

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


=begin
  def check_value2 (value)
    return "Fizz" if value % 3 and value % 5 == 0
    return "Buzz" if value % 5 == 0
    return value if value % 3 == 0

  end
=end

  def check_for_range (range)
    range.to_a
    output = Array.new
    range.each {|x| output.push(check_value(x))}
    puts output
  end




end


conditional = Conditional.new
#puts conditional.check_value2(15)


conditional.check_for_range((1..15))
