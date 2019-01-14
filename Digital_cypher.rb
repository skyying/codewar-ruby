def encode(message, key)
  # Code here
  table = {}
  ("a".."z").to_a.each_with_index do |x, i|
    table[x] = i+1
  end
  key = (key.to_s).chars.map { |x| x.to_i }
  a = message.chars.each_with_index.map do |char, i|
    table[char].to_i + key[i % key.length].to_i
  end
  a
end


# another solution from top 3
def encode(message, key)
  message.codepoints.zip(key.to_s.chars.map(&:to_i).cycle).map { |x, v| x + v - 96}
end

