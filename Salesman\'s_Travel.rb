def travel(r, zipcode)
  r = r.split(",").select { |x| x[x.length - zipcode.length, zipcode.length] == zipcode }
  address = (r.map { |x| (x.split)[1..-3].join(" ") }).join(",") if r.length > 0
  number = (r.map { |x| (x.split).first }).join(",") if r.length > 0
  "#{zipcode}:#{address}/#{number}"
end
