def one?(collection)
  #if the block returns a truthy value for only 1 element, then it returns true
  #otherwise false. 
  #one? will stop searching ina colleciton the second time it returns true.
  count = 0
  collection.each do |value|
    next if count > 1 
    count += 1 if yield(value)
  end
  count != 1 ? false : true
end


puts one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
puts one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
puts one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
puts one?([1, 3, 5, 7]) { |value| true }           # -> false
puts one?([1, 3, 5, 7]) { |value| false }          # -> false
puts one?([]) { |value| true }                     # -> false