def max_sequence(arr)
  max_end_here = 0
  max_so_far = 0
  arr.each_with_index do |item, index|
    if max_end_here + item < 0
      max_end_here = 0
    else 
      max_end_here += item
    end
    if max_so_far < max_end_here
      max_so_far = max_end_here
    end
  end
  max_so_far
end
