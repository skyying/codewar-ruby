# solution 1
def count_sheep(num)
  s = ""
  1.upto(num).each { |x| s << "#{x} sheep..." }
  s
end


# solution 2
def count_sheep(num)
  (1..num).map { |x| "#{x} sheep..."}.join
end
