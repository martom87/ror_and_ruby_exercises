class Sorter

  def bubble_sort (input)
    swap = true
    return input if input.size <= 1
    while swap
      swap = false
      ((input.size) - 1).times do |i|
        if input[i] > input[i + 1]
          swap = true
          input[i], input[i + 1] = input[i + 1], input[i]
        end
      end
    end
    return input
  end

  def insertion_sort (input)
    return input if input.size <= 1
    (input.size).times do |i|
      while i > 0
        if input[i] < input[i - 1]
          input[i - 1], input[i] = input[i], input[i - 1]
        else
          break
        end
        i -= 1
      end
    end
    return input
  end

  def quick_sort (input)
    return input if input.size <= 1
    pivot = input.delete_at(rand(input.size))
    left = []
    right = []

    input.each do |i|
      if i < pivot
        left << i
      else
        right << i
      end
    end
    return *quick_sort(left), pivot, *quick_sort(right)
  end

end

################DEMO##############################################


sorter = Sorter.new

#print (sorter.bubble_sort ([1, 4, 2, 100, 5, 234, 12, 66, 777]))

#print (sorter.insertion_sort ([1, 4, 2, 100, 5, 234, 12, 66, 777]))

print (sorter.quick_sort ([1, 4, 2, 100, 5, 234, 12, 66, 777]))
