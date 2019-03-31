
# Implementation of ruby product algorithm
class ArrayProduct
  def initialize(a)
    @a = a
  end

  def get_combination(*arrs)
    results = []

    ary = [@a] + arrs
    n = ary.size

    # create a new array to record element we alreay looped
    cur_idx = Array.new(n, 0)

    while true
      cur = []
      (0...n).each { |i| cur << ary[i][cur_idx[i]] }
      results << cur

      right = n - 1

      # find the index in ary that we need to increment.
      # start from right most sub-array
      while right >= 0 && (cur_idx[right] + 1 == ary[right].size)
        right -= 1 
      end

      # all is looped
      return results if right < 0

      # if right is not reach the boundary, increase the index in current right
      cur_idx[right] += 1

      # reset subarray's index in cur_idx
      cur_idx = cur_idx.map.with_index { |el, i| i > right ? 0 : el }
    end
  end
end

p l = ArrayProduct.new([1, 2])
p l.get_combination(["a", "b", "c"], [10, 11])
