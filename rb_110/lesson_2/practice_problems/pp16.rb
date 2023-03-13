# Write a method that returns one UUID when called with no parameters.

=begin

return: UUID
String with letters and intergers randomized
32 characters in total
in sections: 8-4-4-4-12

thoughts:
do a method and two methods within it:
1. to randomise a letter
2. to randomise a number

Randomise which method it selects
push that to the string
once their is 8 characters add a "-"
once their is 13 characters add a "-"
once their is 18 characters add a "-"
once thier is 22 characters add a "-"

=end

def add_letter
  array = ('a'..'z').to_a
  array.sample
end 

def add_number
  array = (0..9).to_a
  array.sample.to_s
end 

def create_UUID
  uuid = ''
  loop do
    uuid << [add_letter, add_number].sample 
    case uuid.size
    when 8, 13, 18, 23
      uuid << '-'
    end
    break if uuid.size == 36
  end
  uuid
end 

p create_UUID
