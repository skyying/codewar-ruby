# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)

  return s if num_rows <= 1

  # create a 2d array to store chars on each row
  rows = []
  num_rows.times do
    rows << Array.new
  end

  
  index = 0
  # increase row's index by 1 or -1
  increment = 1

  s.chars.each do |c|

    rows[index] << c

    # two rules to decide increment
    increment = 1 if index == 0
    # when reach last row, treavse back
    increment = -1 if index == num_rows - 1
    
    #reset index
    index += increment
  end

  rows.join("")
end
