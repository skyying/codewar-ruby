# without rational

def sumFracts(lst)
  ni = lst.map { |x| x[0] }
  di = lst.map { |x| x[1] }
  di = di.reduce(:lcm)

  ni = lst.map { |x| di / x[1] * x[0] }
  ni = ni.reduce(:+)
  
  if ni.nil? or di.nil?
    return nil
  end

  g = di.gcd(ni)

  while g > 1 
    di = di / g
    ni = ni / g
    g = di.gcd(ni)
  end
  
  return ni if di == 1
  
  [ni, di]
end


# using rational
def sumFracts(lst)
  return nil if lst.nil? || lst.empty?
  sum = lst.reduce(Rational(0)) { |s, (a, b)| s + Rational(a,b) }
  sum.denominator == 1 ? sum.numerator : [sum.numerator, sum.denominator]
end

