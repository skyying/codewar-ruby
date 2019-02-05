def smallest(n)

  n = (n.to_s).scan(/\d/).map { |x| x.to_i}

  def getMinIndex (arr, min, g)
    a = arr.each.with_index.find_all { |x, i| x == min }.map { |x, i| i + g + 1}
    puts "getMinIndex = #{a}"
    a
  end

  def dup_array (arr)
    arr.inject([]) {|a, elm| a << elm.dup}
  end
  def getMinNumber (arr, removeIndex, insertIndex)
    new_arr = dup_array(arr)
    min_digit = new_arr.delete_at(removeIndex)
    new_arr.insert(insertIndex, min_digit)
    new_arr.join("").to_i
  end

  n.each_with_index do |x, i|
    break if i == n.size
    tmp_ary = n[i+1, n.size]
    min = tmp_ary.min
    if min < x
       min_index = getMinIndex(tmp_ary, min, i)[0]
       if getMinNumber(n, min_index, i) == getMinNumber(n, i, min_index) 
         if i < min_index
           return [getMinNumber(n, min_index, i), i, min_index]
         else
           return [getMinNumber(n, min_index, i), min_index, i]
         end
       end

       return [getMinNumber(n, min_index, i), min_index, i]
    end
  end
end

puts smallest(209917) == [29917, 0, 1]
puts smallest(261235) == [126235, 2, 0]
