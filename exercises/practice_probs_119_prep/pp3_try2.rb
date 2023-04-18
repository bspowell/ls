# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.
=begin

Problem:
- write a method that accepts a string
- returns the same sequence of characters with every 2nd character
in every 3rd word, converted to uppercase. 
- Other characters remain the same


Input:string
Output: same string, mutated

Rules:

Examples/Modeling:
- select the 3rd word
- step to select every 2nd character
- reassing the character at that index

Algorithm:
- given a string
- break string into an array
- iterate over the array
  - step through the string to select every 2nd character
  - reassign the current index to the same value but uppercase
- join the array back together

=end

def to_weird_case(string)
  count = 1
  string.split.map do |word|
    if count % 3 == 0
      (1...word.size).step(2) do |ind|
        word[ind] = word[ind].upcase
      end
      count += 1
      word
    else
      count += 1
      word
    end
  end.join(' ')
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