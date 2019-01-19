# solution 1
def lengthOfLongestSubstring (s)
  return 0 if s.size == 0
  max = 0
  left = 0
  # use hash to know if duplicates
  h = {}
  0.upto(s.length - 1) do |i|
    # if repeats
    if h.key? s[i]
      # reset left pointer index 
      left = [left, h[s[i]] + 1].max
    end

    # if not repeates, store elements and their index
    h[s[i]] = i
    # update max 
    max = [i-left+1, max].max
  end
  max
end



