#find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#solution 1

flintstones.each_with_index do |element, index|
  if element.start_with?('Be')
    p index
  end
end  

#solution 2
flintstones.index { |name| name[0, 2] == "Be" }