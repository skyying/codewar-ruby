# @param {Integer[]} seats
# @return {Integer}
def max_dist_to_closest(seats)

    s = -1
    e = 0
    i = 0
    max = 0
    tmp_size = 0
    tmp_start = 0
    max_start = 0

    def shouldResetStartIndex (prev, current)
        current == 0 && prev == 1
    end

    def isLeadingZero (i, current)
        i == 0 && current == 0
    end

    while i < seats.size
        # conditions for reset index
        if shouldResetStartIndex(seats[i-1], seats[i]) || isLeadingZero(i, seats[i])
            tmp_size = 1
            tmp_start = i
            s = i
            e = i
        # continuous zero
        elsif i-1 >= 0 && seats[i-1] == 0 && seats[i] == 0
            e += 1
            tmp_size += 1
            if max < tmp_size
                max_start = tmp_start
                max = [max, tmp_size].max
            end
        else
          s = i
          e = i
        end

        i+=1
    end

    max = [max, tmp_size].max
    if max < tmp_size
       max_start = tmp_start
    end

    if max_start + max == seats.size || max_start == 0
      return max
    end

    (max + 1) / 2

end

puts max_dist_to_closest([1,0,0,0,1,0,1]) == 2
puts max_dist_to_closest([0,0,0,1,0,1]) == 3
puts max_dist_to_closest([1,0,0,1,0,1]) == 1
puts max_dist_to_closest([0,0,0,1,1,0,1,1,0,0,0,1,0,0,1,0,0]) == 3
puts max_dist_to_closest([0,1,1,1,0,0,1,0,0]) == 2
