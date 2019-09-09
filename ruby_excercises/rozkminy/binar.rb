require 'pry'

def factorial (n)
  return 1 if n == 0
  n * factorial(n - 1)
end

#puts factorial(3)


def find_binary(decimal)
  if (decimal == 0)
    0
  else
    decimal % 2 + 10 * (find_binary(decimal / 2))
  end
end

puts find_binary(21)

#https://www.geeksforgeeks.org/recursive-program-for-binary-to-decimal/
# https://stackoverflow.com/questions/31307126/create-a-decimal-to-binary-converter-using-ruby
# https://www.wikihow.com/Convert-from-Binary-to-Decimal

def toDecimal(binary, i = 0)
  n = binary.size
  if (i == n - 1)
    (binary[i]).to_i - 0
  else
    (binary[i]).to_i - 0 << (n - i - 1 +
        toDecimal(binary, i + 1))
  end
end

puts toDecimal("10101")
