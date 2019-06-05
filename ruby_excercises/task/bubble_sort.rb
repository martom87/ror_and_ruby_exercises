class BubbleSort

  def bubble_sort(random_numbers)
    for i in 0..random_numbers.size
      for j in i+1..random_numbers.size-1
        random_numbers[i], random_numbers[j] = random_numbers[j], random_numbers[i] if(random_numbers[i] > random_numbers[j])
      end
    end
    random_numbers
  end
end