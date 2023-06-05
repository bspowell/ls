=begin

input:
prompt the user for a noun
prompt the user for a verb
prompt the user for a adjective
prompt the user for a adverb

use string concatenation to add words into sentence
output:
print sentence

=end

def prompt(question)
  puts "=> #{question}"
end

user_input = []
prompt "Enter a noun:"
user_input << gets.chomp
prompt "Enter a verb:"
user_input << gets.chomp
prompt "Enter an adjective:"
user_input << gets.chomp
prompt "Enter an adverb:"
user_input << gets.chomp

puts "Do you #{user_input.shift} your #{user_input.shift} #{user_input.shift} #{user_input.shift}? That's hilarious!"