# @param {String} s
# @return {String}
# solution 
def reverse_vowels(s)
    l = 0
    r = s.size - 1
    v = "AEIOUaeiou"
    while l < r do
        if v.include?s[l] and v.include?s[r]
            s[l], s[r] = s[r], s[l]
            l+=1
            r-=1
         elsif v.include?s[l]
            r-=1
         elsif v.include?s[r]
             l+=1
        else
             l+=1
             r-=1
        end
    end
    s 
end



def reverse_vowels(s)
  vowels = s.scan(/[aeiou]/i)
  s.gsub(/[aeiou]/i) { |x| vowels.pop }
end

