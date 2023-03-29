=begin
Each UUID consists of 32 hexadecimal charactesr
broken into 5 sections 8-4-4-4-12
represented by a string

DS:
"f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns a UUID when called with no paramters

input: nothing
output: string 

d/a
- create a string over random characters - numbers and lowercase characters
  - first 8
  - then 4, 4, 4, 12
- concatenate into a string.

=end


def uuid
  charset = Array('a'..'z') + Array('0'..'9')
  # Array.new(n){[*"A".."Z", *"0".."9"].sample}.join
  uuid1 = Array.new(8) { charset.sample }.join
  uuid2 = Array.new(4) { charset.sample }.join
  uuid3 = Array.new(4) { charset.sample }.join
  uuid4 = Array.new(4) { charset.sample }.join
  uuid5 = Array.new(12) { charset.sample }.join
  puts "#{uuid1}-#{uuid2}-#{uuid3}-#{uuid4}-#{uuid5}"
end

uuid