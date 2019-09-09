def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three {|number| puts number * 10}


def arr_to_sqr
  arr = [1, 2, 3]
  yield arr
end

arr_to_sqr {|arr| arr.each {|x| puts x * x}}

def arr_to_sqr2(arr)
  yield arr
end

arr_to_sqr2([1,2,3]) {|arr| arr.each {|x| puts x * x}}


