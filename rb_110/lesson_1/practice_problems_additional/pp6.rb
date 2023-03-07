# Write code that changes the array below so that all of the names are shortened 
# to just the first three characters. Do not create a new array.



flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#solution 1
flintstones.map! do |element|
  element.slice(0..2)
end
p flintstones


#solution 2
flintstones.map! do |element|
  element[0,3] # string[start, length]
end
p flintstones