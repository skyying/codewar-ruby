# solution 1
def max_multiple(divisor, bound)
  r = []
  (bound+1).times do |x|
     if x % divisor == 0
        r << x
      end
  end
  r.max
end

# solution 2
def max_multiple(divisor, bound)
  (0..bound).reverse_each.find { |x| x%divisor == 0}
end


# solution 3
def max_multiple(divisor, bound)
  bound.downto(0) do |n|
    return n if n % divisor == 0
  end
end


# solution 4
def max_multiple(divisor, bound)
  (0..bound).select  { |x| x % divisor == 0 }.max
end
