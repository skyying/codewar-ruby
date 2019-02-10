# solution 1

def freqSeq(str, seq)
  h = {}
  str.chars.each { |x| h[x] = h[x] ? h[x] + 1 : 1}
  character = str.chars.map { |x| h[x]}
  character.join(seq)
end


# solution 2
def freqSeq(str, seq)
  h = Hash.new(0)
  str.chars.each { |x| h[x]+=1}
  character = str.chars.map { |x| h[x]}
  character.join(seq)
end

# solution 3
def freqSeq(str, seq)
  str.chars.map { |x| str.count(x)}.join(seq)
end

puts freqSeq("hello world", "-")
