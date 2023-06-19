=begin
 
P: 
Take a string of digits 
return all the possible consecutive numbers of a specified length 

Examples:
01234 - 3 digit series
012
123
234

01234 - 4 digit series
0123
1234

input: for creating object - string of ints, for slices method, integer
output: array of arrays with series of consect numbers.

arrray of character digits
take each 


=end


class Series

  def initialize(string)
    @list = string
  end

  def slices(count)
    raise(ArgumentError) if count > @list.size
    @list = @list.chars
    result = []

    @list.each_with_index do |ele, index|
      result << @list[index...(index + count)].map(&:to_i) if @list[index...(index + count)].size == count
    end

    result 
    #returns an array of arrays with series- 
  end


end

series = Series.new('01234')
p series.slices(3)