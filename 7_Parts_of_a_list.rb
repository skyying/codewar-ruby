# solution 1
def partlist(arr)
  ans = []
  (arr.size - 1).times do |i|
      ans.push( [ arr[0, i+1].join(" "), arr[i+1, arr.size-i].join(" ")] )
  end
  ans
end


# solution 2
def partlist(arr)
  (1..arr.size).map { |i| [arr.take(i).join(" "), arr.drop(i).join(" ")]}
end

# notes
# select first part of array, use take
# select last part of array, use drop
