flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hsh = {}
flintstones.each_with_index do |ele, ind|
  hsh[ele] = ind
end

p hsh