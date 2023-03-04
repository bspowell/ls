=begin
---------------- Problem
General revision of problem: 
Ask a user for their name anad greet the user. However, if usr writes name with a !, 
then capitalize greeting.

Input: string (name)

Output: string (greeting)

Rules:
- if input is a string with !, then issue capitalize greeting

---------------- Modelling
What type of objects do you need? Array, hash, etc.

---------------- Data Structures / Algorithm
Write out pseudo-code
Ask user for their name. 
If their name includes a !, then capitalize greeting and add extended
greeting about screaming


---------------- Scratchpad
- .upcase could be useful


=end

def greeting(user_name)
  "Hello #{user_name}"
end

puts "What is your name?"
name = gets.chomp

if name.include?('!')
  name.chop!
  puts greeting(name).upcase +  ". WHY ARE WE SCREAMING?"
else
  puts greeting(name)
end


  