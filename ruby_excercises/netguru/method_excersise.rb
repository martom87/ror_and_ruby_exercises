class MethodExcersise

  def all_in_one(my_range)
    my_range.to_a
        .select {|x| x % 3 == 0}
        .last(2)
        .max
  end


  def select_users(data, limit = 1)
    data.sort_by {|a| a[:age]}
        .first(limit)
  end

  def count_fibbonaci(n)
    if n == 0
      return 0
    elsif n == 1 or n == 2
      return 1
    else
      return count_fibbonaci(n - 2) + count_fibbonaci(n - 1)
    end
  end

  def fib(places)
    a = 0
    b = 1

    while b < places do
      puts b
      a, b = b, a + b
    end
  end

end


##DEMO1
method_ex = MethodExcersise.new
#puts method_ex.all_in_one(1..10)
##DEMO2
data = [{name: "Arya", age: 12}, {name: "Jon", age: 18}, {name: "Maciej", age: 99}]

puts method_ex.select_users(data, 1)

##DEMO3

=begin
puts method_ex.count_fibbonaci(5)
puts method_ex.count_fibbonaci(10)
puts method_ex.count_fibbonaci(11)
puts method_ex.count_fibbonaci(1)
puts method_ex.count_fibbonaci(0)
=end

method_ex.fib(1000)

method_ex.fib(15)




