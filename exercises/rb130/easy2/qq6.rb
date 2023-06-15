def each_with_index(collection)
  0.upto(collection.size - 1) do |index|
    yield(collection[index], index)
  end
  collection
end



result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]