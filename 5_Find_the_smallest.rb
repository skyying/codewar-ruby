def smallest(n)

  n = (n.to_s).scan(/\d/).map { |x| x.to_i}

  def getMinIndex (arr, min, g)
    a = arr.each.with_index.find_all { |x, i| x == min }.map { |x, i| i + g + 1}
    puts "getMinIndex = #{a}"
    a
  end

  n.each_with_index do |x, i|
    break if i == n.size
    tmp_ary = n[i+1, n.size]
    min = tmp_ary.min
    if min < x
       min_index = getMinIndex(tmp_ary, min, i)[0]
       current_target = n[i]
       current_min = n.delete_at(min_index)
       n.insert(i, current_min)
       # todo need to resolve use case 209917
       return [n.join("").to_i, min_index, i]
    end
  end
end

puts smallest(209917) == [29917, 0, 1]
puts smallest(261235) == [126235, 2, 0]
