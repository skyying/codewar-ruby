def balance(b)
  b = b.split("\n")
  b = b.map do |item|
    item.split(" ").map do |word|
        word = word.scan(/[a-zA-Z0-9.]+/).join("")
    end
  end
  a = b[1, b.size-1]
  total = b[0][0].to_f
  
  total_expanse = 0
  avg_expanse = 0
  
  center = a.map.with_index do |item, i|
    expanse = (item[2].to_f).round(2)
    total_expanse += expanse
    current_expanse = total - total_expanse
    c = item.join(" ") + "#{ i==0 ? "Original " : " "}Balance#{i==0 ? ": " : " " }#{current_expanse}"
  end
  
  center.join("\r\n") +
  "Total_expense  #{(total_expanse).round(2)}" +
  "Average_expense  #{ (total_expanse / (b.size-1)).round(2) }"
end

