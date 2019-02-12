# solution 1
def power_of_two?(x)
  return false if x % 2 != 0
  while x > 1
      return false if x % 2 != 0
      x = x / 2
  end
  true
end


# solution 2
# e.g 4 => 100, 3 => 011
# 100 & 011 => 000
def power_of_two?(n)
  n & (n-1) == 0
end

