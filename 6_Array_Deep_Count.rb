def deep_count(a)
  count = 0
  res = [a]
  while res.size > 0
     first = res.pop
     if first.class == Array
       count += first.size
       first.each do |x|
          if x.size > 0
             res.push(x)
          end
       end
     end
  end
  count
end

