def balance(b)
  puts 
  
  b = b.split("\n").select { |x| x.length > 0 }
  b = b.map do |item|
    item = item.split(" ").map do |word|
        word = word.scan(/[a-zA-Z0-9.]+/).join("")
    end
    
  end
  
  a = b[1, b.size-1]
  total = b[0][0].to_f
  
  total_expanse = 0.0
  avg_expanse = 0.0
  
  center = a.map.with_index do |item, i|
    expanse = item[2].to_f
    total_expanse += expanse
    current_expanse = "%5.2f" % [total - total_expanse]
    item.join(" ") + " Balance #{current_expanse}"
  end
 # puts center
  ans = "Original Balance: 1233.00\r\n125 Hardware 24.80 Balance 1208.20\r\n123 Flowers 93.50 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.40 Balance 877.40\r\n122 Picture 93.50 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.60 Balance 751.30\r\n129 Fruits 17.60 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.60 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"
  
  puts ans
  puts "-------"
  total_expanse_2 = "%5.2f" % [total_expanse /  1]
  g = "Original Balance: #{b[0][0]}\r\n" +
  center.join("\r\n") +
  "\r\nTotal expense  #{total_expanse_2}" +
  "\r\nAverage expense  #{ (total_expanse / (a.size)).round(2) }"
  puts g
  g
#   puts g
#   g.split("").each_with_index do |char, i|
#     puts char
#     if char != ans[i]
#        puts "char: #{char}, i: #{i}"
#     end
#   end
end
