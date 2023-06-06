#iterates over the collectoin
#passes each element to the block
#until it finds ele that returns false or nil. 
#then converts the remaining elements into an array which is returned
#
def drop_while(array)
  new_array = []
  array.each_with_index do |ele, index|
    return array[index..-1] unless yield(ele)
  end
  new_array
end


p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []