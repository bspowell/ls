def check(num)
  num.to_i.to_s == num
end 

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.chomp
  break if number_of_lines.downcase == 'q'
  
  if check(number_of_lines)
    number_of_lines = number_of_lines.to_i
    if number_of_lines >= 3
      while number_of_lines > 0
        puts 'Launch School is the best!'
        number_of_lines -= 1
      end
    else
      puts ">> That's not enough lines."
    end
  else
    puts 'that is not a number'
  end 
end

puts 'your done'