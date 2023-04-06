flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index = 0
flintstones.each_with_index do |ele, ind|
  index = ind
  break if ele.start_with?("Be")
end

p index