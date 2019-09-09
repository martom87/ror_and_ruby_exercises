require 'pry'
# Read n
# i = 0, s = 0
# Function Sample(int n)
# while (n > 0)
#   r = n % l0
#   p = 8 ^ i
#   s = s + p * r
#   i + +
#   n = n / 10
#   End While
#   Return s;
#   End Function


def sample_function(n)
   i = 0
   s = 0
  while n > 0
    r = n%10
    p=8^i
    s= s + p * r
    i +=
    n = n/10
  end
  s
end

arr = [1,2,3]




arr.reverse_each{|x|puts x}



for i in (-(arr.size+1)..0)
puts  arr[-i]
end


