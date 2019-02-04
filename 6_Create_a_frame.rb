
# solution 1
def frame(text, char)
  max_length = 0
  text.each do |x|
    if x.size > max_length
      max_length = x.size
    end
  end
 
  texts = text.map do |x|
    "#{char} #{x.ljust(max_length)} #{char}"
  end

  top_and_bottom = "#{char}" * (max_length + 4)
  "#{top_and_bottom}\n#{texts.join("\n")}\n#{top_and_bottom}"
end



# solution 2 (rank first) 
def frame(text, char)
  width = text.max { |a,b| a.length <=> b.length }.size + 4
  output = "" << "#{char}" * width << "\n"
  text.each { |line| output << "#{char} #{line}" << "%0#{width - line.size - 2}s" % char << "\n" }
  output << "#{char}" * width
end


# NOTES
# HOW TO FIND MAX STRING SIZE IN AN ARRAY
# arr.max { |a, b| a.length <=> b.length }
