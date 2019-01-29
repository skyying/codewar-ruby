#solution 1
def is_divisible(*arg)
  arg[1, arg.size-1].each do |x|
    if arg.first % x != 0
       return false
    end
  end
  true
end



# solution 2
# should have a mind set that array should have this kind of methods
def is_divisible(n ,*arg)
  arg.all? { |x| n % x == 0 }
end

