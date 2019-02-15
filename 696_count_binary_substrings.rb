# @param {String} s
# @return {Integer}
# solution 1
def count_binary_substrings(s)
    groups = [0]
    s = s.chars
    s.each_with_index do |c, i|
        if i >= 0 && s[i-1] != c
            groups.push(1)
        elsif i >= 0
            groups[-1] += 1
        end
    end
    count = 0
    groups.each_cons(2) { |a, b| count+= [a, b].min}
    count
end

# solution 2
def count_binary_substrings(s)
  ans, prev, cur  = 0, 0, 1
  s.each_with_index do |c, i|
    if i >= 1
      if s[i-1] != c
        ans += [prev, cur].min
        prev, cur = cur, 1
      else
        cur += 1
      end
  end
  ans + [prev, cur].min
end


# same logic with solution 2
def count_binary_substrings(s)
  c = s[0]
  ans = i = j = 0
  s.each_char do |b|
    if b == c
      i += 1
    else
      ans += [i, j].min
      j = i
      i = 1
      c = b
    end
  end
  ans += [i, j].min
end
