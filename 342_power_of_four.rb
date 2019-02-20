# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
  while num > 0
    if num == 1
      return true
    elsif num % 4 != 0
      return false
    else
      num = num / 4
    end
  end
  false
end


def is_power_of_four(num)
  while num > 1
    return false if num % 4 != 0
    num /= 4
  end
  num == 1
end
