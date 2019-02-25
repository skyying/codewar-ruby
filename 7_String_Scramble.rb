def scramble(str, arr)
  ans = [];
  str.chars.each.with_index { |n, i| ans[arr[i]] = n}
  ans.join
end
