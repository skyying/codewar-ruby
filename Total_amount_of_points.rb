def points(games)
  games.reduce(0) do |sum, points|
    points = points.split(":").map(&:to_i)
    if points[0] > points[1]
      sum += 3
    elsif points[0] == points[1]
      sum += 1
    else 
      sum += 0
    end
  end
end
