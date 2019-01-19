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




# solution 2
def length_of_longest_substring(s)
  # use array to store if repeats
  table = Array.new(128, 0)
  max = 0
  start = 0
  i = 0
  # loop through every string
  while i < s.size do
    # get Unicode of current char
    code = s[i].ord
    # check if current char is already stored in the array
    # if yes, get its index
    # if not, keep previous start index, cause table[code] will be zero
    start = [table[code], start].max

    # update current max value
    # + 1 means counts current char
    max = [max, i - start + 1].max
    # update index
    table[code] = i + 1
    # increase i 
    i += 1
  end
  max
end

