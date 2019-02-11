# solution 1
def tick_toward(start, target)
  ans = [start]
  current_x = start[0]
  current_y = start[1]
  end_x = target[0]
  end_y = target[1]
  while (current_x != end_x) || (current_y != end_y)
    if current_x != end_x
      if current_x > end_x
        current_x -= 1
      else
        current_x += 1
      end
    end

    if current_y != end_y
      if current_y > end_y
        current_y -= 1
      else
        current_y += 1
      end
    end
    ans.push [current_x, current_y]
  end
  ans
end

# solution 2
def tick_toward(start, target)
  result = [start]
  next_target = start
  until next_target == target
    next_target = next_target.map.with_index { |x, i| x > target[i] ? x - 1 : x < target[i] ? x + 1 : x }
    result.push next_target
  end
  result
end

# solution 3
def tick_toward(start, target)
  return [start] if start == target

  # get -1, 1, 0 base on target is greater than start
  deltas = start.zip(target).map { |a, b| b <=> a }
  # add deltas value
  tick = start.zip(deltas).map { |a, b| a + b }
  # recurson
  [start] + tick_toward(tick, target)
end
