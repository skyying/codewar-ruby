def slice_window(arr)
  size = arr[0]
  numbers = arr.drop(1)
  current_max = numbers[0, size].max
  puts current_max
  size.upto(numbers.count - 1).each do |idx|
    if numbers[idx] > current_max
      current_max = numbers[idx]
      puts current_max
    else
      current_max = numbers[idx - size, size].max
      puts current_max
    end
  end
end

slice_window([3, 2, 3, 4, 2])
