#1. Declares array of three hases and  displays nice stentence

my_hash1 = {name: "marcin", born: 1987, age: 31}
my_hash2 = {name: "wacek", born: 1988, age: 30}
my_hash3 = {name: "janusz", born: 1989, age: 29}
my_hash_array = [my_hash1, my_hash2, my_hash3]

 my_hash_array.each {|x| puts "#{x[:name]} is #{x[:age]} was born in #{x[:born]}"}


#2). Takes the number of 1 to 10 to square

puts ((1..10).to_a).map {|x| x ** 2}

#3). selects even numbers from range 1 to 10

puts ((1..10).to_a).select {|x| x.even?}

#4). selects the product of numbers from 1 to 10

puts ((1..3).to_a).inject(:*)

