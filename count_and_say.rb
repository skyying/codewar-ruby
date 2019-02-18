# @param {Integer} n
# @return {String}
def count_and_say(n)

  def get_result(digits)
    first = digits[0]
    group = []
    count = 0
    digits.chars.each_with_index do |c, _i|
      if c == first
        count += 1
      else
        group.push("#{count}#{first}")
        count = 1
        first = c
      end
    end
    group.push("#{count}#{first}")
    group.join
  end

  i = 2
  ans = get_result("1")
  return "1" if n <= 1
  return ans if n == 2
  while i < n 
    ans = get_result(ans)
    i+=1
  end

  ans

end

