
def elevator(left, right, call)
   return "left" if (call == left and call != right) or (call-left).abs < (call-right).abs
   "right"
end

puts elevator(0, 1, 1)
puts elevator(1, 1, 1)
