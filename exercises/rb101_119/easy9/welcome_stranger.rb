=begin

Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements 
that, when combined with adjoining spaces, will produce a person's name. 

The hash will contain two keys, :title and :occupation, 
and the appropriate values. 

Your method should return a greeting that uses the person's full name, 
and mentions the person's title and occupation.

input: array, hash
output: string (greeeting with persons' name, title, occupation)

Implicit rules;
- The array contains person first, middle inital and last naem
- the hash contains title and occupation

DS:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

/* get given an array and hash */
- 
=end

def greetings(array, hash)
  "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]}" \
  " #{hash[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })