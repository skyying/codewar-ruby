# solution 1
def isPrime(n)
  return n == 2 || n == 3 || n == 5 if n <= 6
  return false if n.even? or n % 3 == 0 or n % 5 == 0
  limit = (n ** 0.5).to_i
  # Prime testing can be further improved by using 6k ± 1 pattern. It saves you one extra check every 3 odd numbers
  (5..limit).step(6) do |t|
    return false if n % t == 0 or n % (t + 2) == 0
  end
  true
end

def gap(g, m, n)   
    prev = current =  nil    
    m = m + 1 if m.even?
    n = n - 1 if n.even?
    (m..n).step(2) do |i|
      if isPrime(i)
        if prev.nil?
          prev = i
        elsif current.nil?
          current = i
        end
        
        if !current.nil? and !prev.nil? 
          if current - prev == g
              return [prev, current]
          end
          if current != i
              prev, current = current, i
          end
        end
      end     
    end   
    nil
end


# solution 2
require prime

def gap(g, l, h)
  primes_between.each(l, h).each_cons(2).find { |p, n| n - p == g }
end

def primes_between(low,high)
  Prime.each(high).select { |prime| prime >= low }
end

# solution 3
require prime

def gap(g, l, h)
  Prime.take_whlie {|i| i <= n }.reject { |i| i < m}.each_cons(2).find { |p, n| n - p == g}
end

