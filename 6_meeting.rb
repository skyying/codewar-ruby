# solution 1
def meeting(s)
    a = s.split(";").map { |x| x.split(":").map { |p| p.upcase } }
    b = a.sort_by { |meeting| [meeting[1], meeting[0]] }
    b.map { |x| %Q((#{x.reverse.join(", ")})) }.join("")
end

# learn how to sort 2d array
# arr.sort_by { |a| [ a[0], a[1] ] }
