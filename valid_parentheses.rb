# solution 1

def valid_parentheses(string)
  #your code here
  stack = []
  match = {"{" => "}", "<" => ">", "(" => ")"}
  string.chars.each do |c|
    if match.keys.include? c
       stack << c
    elsif match.values.include? c
       top = stack.pop
       if match[top] != c
         return false
       end
    end 
  end
  return false if stack.length > 0
  true
end



# solution2
def valid_parentheses(string)
  open = 0
  string.chars do |c|
    open += 1 if c == "("
    open -= 1 if c == ")"
    return false if open < 0
  end
  open == 0
end

