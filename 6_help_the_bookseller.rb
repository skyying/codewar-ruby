
# solution 1
def stockList(listOfArt, listOfCat)
   return "" if listOfArt.empty? || listOfCat.empty?
   res = Hash.new(0)
   listOfArt.each do |b|
      first_letter = b[0]
      stock = b.split.last.to_i
      res[first_letter.to_sym] += stock
   end
   listOfCat.map do |x|
      "(#{x} : #{res[x.to_sym].nil? ? 0 : res[x.to_sym]})"
   end.join(" - ")
end

# solution 2
def stockList(listOfArt, listOfCart)
   return "" if listOfArt.empty? || listOfCat.empty?
   res = Hash.new(0)
   listOfArt.each { |b| res[b[0].to_sym] += b.split.last.to_i }
   listOfCat.map { |x| "(#{x} : #{res[x.to_sym]})" }.join(" - ")
end
