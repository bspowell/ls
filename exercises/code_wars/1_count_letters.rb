=begin
Count letters in string
count lowercase letters in a given string
return the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

input: string
output: hash (leter key, count of letter as value)

implicit: 
- key must be a symbol
- 'char' instead of string in Crystal ? 

A:
/* given a string */
- create an empty hash
- break up string into an array of characters
- iterate over array of strings
  - see if character as a symbol is included in hash
    - if not, add key and value of 1 to hash
    - if included, add +1 to symbols value


=end

def letter_count(string)
  hsh = {}
  string.chars.each do |char|
    hsh.key?(char.to_sym) ? hsh[char.to_sym] += 1 : hsh[char.to_sym] = 1
  end
  hsh
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}