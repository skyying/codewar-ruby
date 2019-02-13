# solution 1
def nb_dig(n, d)
  (0..n).map { |x| x*x }.reduce(0) { |sum, x| sum += x.to_s.chars.count { |g| g == d.to_s } }
end

# solution 2
def nb_dig(n, d)
  (0..n).map { |k| k ** 2 }.join.count d.to_s
end
