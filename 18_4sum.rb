# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
   return [] if nums.size < 3
   result = []
   l = r = 0
   nums.sort!
   (0..nums.size-3).each do |i|
       (i+1..nums.size-2).each do |j|
           l = j + 1
           r = nums.size - 1
           while l < r
               if nums[i] + nums [j] + nums[l] + nums[r] == target
                   result.push([nums[i], nums[j], nums[l], nums[r]])
                   l+=1
                   r-=1
               elsif nums[i] + nums[j] + nums[l] + nums[r] < target
                   l+=1
               else
                   r-=1
               end
           end
       end
   end
   result.uniq
end
