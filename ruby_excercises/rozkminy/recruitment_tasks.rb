def print_letters(input:, letters_nuber:)
  arr = input.chars
  arr.select {|x| arr.count(x) > letters_nuber}
end

def count_factorial(n)
  return 1 if n == 0
  n * count_factorial(n - 1)
end

def count_fibbonaci(n)
  return 0 if n == 0
  return 1 if n == 1
  count_fibbonaci(n - 2) + count_fibbonaci(n - 1)
end

def find_fibonacci_range(range:)
  range.to_a.map {|x| count_fibbonaci(x)}
end


def demo
  puts print_letters(input: 'foooobaar', letters_nuber: 1)
  puts count_factorial(3)
  puts count_fibbonaci(12)
  puts find_fibonacci_range(range: 1..10)
end

demo
