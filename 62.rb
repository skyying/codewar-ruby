# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  row_prev = Array.new(m, 1)
  row_current = Array.new(m, 1)
  # should remove this message later
  p 'txxxest'

  p 'something eles'
  (1...n).each do |_row|
    (1...m).each do |_col|
      row_current[_col] = row_prev[_col] + row_current[_col - 1]
    end
    row_prev, row_current = row_current, row_prev
    p row_prev, row_current
  end
  row_prev.last
end

p unique_paths(7, 3)
