def ordered_count(str)
   str.chars.uniq.map { |x| [x, str.count(x)] }
end
