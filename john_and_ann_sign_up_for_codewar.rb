def get_list(n)
  a = [1,1]
  j = [0,0]
  
  ((2..n-1).to_a).each do |i|
    a.push( i - j[a[i-1]] )
    j.push( i - a[j[i-1]] )
  end
  [a, j]

end

def john(n)
    get_list(n)[1]
end
def ann(n)
    get_list(n)[0]
end
def sum_john(n)
    john(n).inject(0, :+)
end
def sum_ann(n)
    ann(n).inject(0, :+)
end

