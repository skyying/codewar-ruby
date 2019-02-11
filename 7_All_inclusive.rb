# solution 1
def contain_all_rots(strng, arr)
  is_all_rots = true
  strng.size.times do |i|
    return false unless arr.include? strng.split('').rotate(i).join('')
  end
  is_all_rots
end

def contain_all_rots(strng, arr)
  (1..arr.size).all? { |i| arr.include? strng.chars.rotate(i).join('') }
end
