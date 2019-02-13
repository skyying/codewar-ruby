def count n, d
  x = 2
  arr = [1]
  while arr.last < n * n
    arr.push(x*x)
    x+=1;
  end
  arr.count { |x| x.to_s.include? d.to_s}
end
puts count(10, 1)
puts count(25, 1)

