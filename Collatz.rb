# solution 1
def collatz(n)
    i = n
    r = "#{n}"
    while i > 1 
      if i.even?
        i = i / 2
        r += "->#{i}"
      else
        i = (i*3) + 1
        r += "->#{i}"
      end
    end   
    r
end


# solution 2
def collatz(n)
  result = [n]
  while n != 1
    n = n.even? ? n / 2 : n * 3 + 1
    result << n
  end
  result.join("->")
end


# solution 3
# use recursion

def collatz(n)
  n > 1 ? n.to_s+"->"+collatz( n.even? n / 2 : n * 3 + 1):"1"
end

