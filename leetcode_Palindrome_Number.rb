# @param {Integer} x
# @return {Boolean}

# solution 1
def is_palindrome(x)
    x = x.to_s.split("")
    len = x.size / 2
    (0..len).each do |i|
        if x[i] != x[x.size-1-i]
            return false
        end
    end
    return true
end

# solution 2
def is_palindrome(x)
  x = x.to_s
  x == x.reverse
end

