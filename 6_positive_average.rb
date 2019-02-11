def pos_average(s)
  str_arr = s.split(", ")
  count = 0
  def get_common_count(a, b)
    a.chars.each_with_index.reduce(0) do |count, (x, i)|
      count += 1 if x == b[i]
      count
    end
  end

  total = 0

  str_arr.each_with_index do |x, i|
    str_arr.drop(i + 1).each do |y|
      total += get_common_count(x, y)
    end
  end

  total.to_f / (((str_arr.size * (str_arr.size - 1)) / 2.0) * str_arr.first.chars.size) * 100

end

