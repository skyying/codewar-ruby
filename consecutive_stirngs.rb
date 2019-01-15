def longest_consec(strarr, k)
    ans = ""
    return "" if strarr.length == 0
    
    max = 0
    ans = ""
    for i in 0..(strarr.length - k)
        tmp = strarr[i, k].nil?  ? "" : strarr[i, k].join("")
        if max < tmp.length
            max = tmp.length
            ans = tmp
        end
    end
    return ans
end


def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end


