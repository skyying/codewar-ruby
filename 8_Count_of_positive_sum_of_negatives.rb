# solution 1
def count_positives_sum_negatives(lst)
  return [] if lst.size == 0
  ans = [0, 0]
  lst.each do |x|
    if x > 0 
      ans[0] += 1
    elsif x < 0
      ans[1] += x
    end
  end
  ans
end


# solution 2
def count_positives_sum_negatives(lst)
  return [] if lst.nil? or lst.empty?
  [lst.count { |x| x > 0},  lst.select { |x| x < 0}.reduce(0, :+)]
end
