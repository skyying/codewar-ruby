# @param {String} s
# @param {Integer} k
# @return {String}
# solution 1
def license_key_formatting(s, k)
    s = s.chars.select { |x| x != "-" }.map { |c| c.upcase }
    r = s.length % k
    if r == 0
      return s.each_slice(k).to_a.map { |a| a.join }.join("-")
    else
      return ([s.take(r).join] + s.drop(r).each_slice(k).to_a.map { |a| a.join }).join("-")
    end
end


# solution 2, this is brillant
def license_key_formatting(s, k)
  s.upcase.delete("-").reverse.scan(/.{1,#{k}}/).join("-").reverse
end

puts license_key_formatting("5F3Z-2e-9-W", 4)
