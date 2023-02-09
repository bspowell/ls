input1 = nil
input2 = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  loop do
    puts 'Enter a positive or negative integer'
    input1 = gets.chomp
    puts 'Enter a positive or negative integer'
    input2 = gets.chomp
    break unless valid_number?(input1 && input2)
    break if input1.to_i * input2.to_i < 0
    puts 'One integer must be positive, one must be negative'
  end
  puts 'Invalid input. Only non-zero integers are allowed'
  break if input1.to_i * input2.to_i < 0
end 

answer = input1.to_i + input2.to_i
puts "#{input1} + #{input2} = #{answer}"


#check User Input Q10 for their answer