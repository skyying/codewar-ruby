# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
# my solution, sliding window strategy
def find_max_average(nums, k)
    max = nums.length <= 1 ? nums[0] : -100000
    return 0.0 if nums.length == 0
    return nums.inject(0) { |sum, x| sum + x} / k.to_f if nums.size == k
    sum = 0
    (0..k-1).to_a.each { |x| sum += nums[x] }
    max = sum
    (0..nums.length - k - 1 ).to_a.each do |x|
        tmp = sum - nums[x] + nums[x+k]
        sum = tmp
        if tmp > max
            max = tmp
        end
    end
    max / k.to_f
end


# best solution, same strategy, but in a more elegant way
def find_max_average(nums, k)
  max = sum = nums[0..k-1].reduce(:+)
  k.upto(nums.size-1).each do |i|
    sum += nums[i] - nums[i-k]
    max = [max, sum].max
  end
  max / k.to_f
end
