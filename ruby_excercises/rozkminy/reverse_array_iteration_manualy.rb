arr1 = Array.new
arr1[0] = 'ala'
arr1[1] = 'ma'
arr1[2] = 'kota'

arr1.each {|x| p x}

arr1.reverse.each {|x| p x}

arr1.each do |x|
  p x
end

arr1.reverse.each do |x|
  p x
end


for x in (0..arr1.size - 1)
  p arr1[x]
end


for x in (-arr1.size + 1..0)
  p arr1[-x]
end

for x in ((arr1.size - 1).downto(0))
  p arr1[x]
end

