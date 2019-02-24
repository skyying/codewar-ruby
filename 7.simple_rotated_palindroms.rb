# solution 1
def solve(s)
  def isP(s)
    0.upto(s.size / 2).to_a.each do |i|
      return false if s[i] != s[s.size - i - 1]
    end
    true
  end

  0.upto(s.size - 1).to_a.each do |i|
    return true if isP(s.chars.rotate(i).join)
  end
  false
end

# solution 2
def solve(s)
  cs = s.chars
  (0...cs.size).any? { |i| (t = cs.rotate(i)) == t.reverse }
end
