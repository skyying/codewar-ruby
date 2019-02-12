# solution 1
def choose_best_sum(t, k, ls)
   ds = ls.combination(k).map { |x| x.reduce(0) { |s, d| s + d } }
   if ds.include?t
      return t
   else
      ds.sort!
      (0...ds.size).each do |i|
         if (ds[i] < t and  i <= ds.size - 2 and ds[i+1] > t ) or ds[i] < t && i == ds.size - 1
            return ds[i]
         end
      end
   end
   nil
end


# solution 2
def choose_best_sum(t, k, ls)
  ls.combination(k).map { |x| x.inject(:+) }.reject { |x| x > t }.max
end
