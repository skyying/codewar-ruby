# @param {Integer} x
# @return {Integer}
def reverse(x)
  operand = x > 0 ? 1 : -1
  ans = x.to_s.reverse.to_i * operand
  ans.bit_length > 31 ? 0 : ans
end
