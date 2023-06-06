=begin 
Iterates over collection
passes each element and index to block
value returned by blcok is not used
returns reference to original collection 

=end

def each_with_index(collection)
  index = 0
  collection.each do |ele|
    yield(ele, index)
    index += 1
  end
end 


result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]