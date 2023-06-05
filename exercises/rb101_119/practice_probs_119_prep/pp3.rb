# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin

Problem:
- write a method that takes a string 
- returns the same sequence
- with every 2nd character, in every 3rd word, convert to uppercase
- other characters are the same

Input: string of words
Output: string of words, mutated

Rules:
- words are separated by spaces
- convert every 2nd character to an uppercase

Examples/Modeling:
"my name is sean and elena has a dog"  => "my name iS sean and eLeNa has a dOg"

We want to break the string up into an array of words
iterate over that array using step, until we get to the 3 word (index 2)
interate over each char in string, mutate every 2nd char to uppercase
join array back into string to return


Algorithm:
/*given a string of words */
break string up into array of words
iterate over the array with step to only target every 3rd element
iterate over each string word using each_char.with_index
- if index is odd ,uppercase mutate the character
join the array back once done to return


How to select every 3rd word:
each_slice(3).with_index
values_at(2)
=end

def to_weird_case(string)
  array = string.split
  array.each_with_index do |word, index|
    if index > 0 && (index + 1) % 3 == 0
      (1..word.size - 1).step(2) do |ind|
        word[ind] = word[ind].upcase
      end
    end
  end
  array.join(' ')
end


# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".