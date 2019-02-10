# solution 1
def in_array(array1, array2)
  result = array1.select do |word|
    array2.find { |x| x.include?word }
  end
  result.sort
end

# I use find instead of any?

# solution 2
def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end

