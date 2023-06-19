require "pry"

=begin
  
P: 
takes a letter as input 
outputs it in a diamond shape 

Given a letter, it prints a diamond starting with A and the 
supplied letter at it's widest point. 

For A
A

For C
   A 1
  B B 3
 C   C 5
D .   D 7
 B B
  A

algo:
- given a letter
- 0 to LETTERS index at indicated letter
  - print each letter until that letter (inclusive)
  - If not last index or first index
    - print a space * the index
    - print the same letter
  - go in reverse order from last letter
    - If not last index or first index
    - print a space * the index
    - print the same letter

    spaces = 1,3,5,7


=end
class Diamond 
  LETTERS = ('A'..'Z').to_a
  

  def self.make_diamond(letter)
    spacing = 1
    letter_index = LETTERS.index(letter)

    (0..letter_index).each do |index|
      if letter == 'A'
        puts 'A'
      elsif index == 0
        puts 'A'.center(1 + (letter_index * 2))
      else
        puts ("#{LETTERS[index]}" + " "*spacing + "#{LETTERS[index]}").center(1 + (letter_index * 2))
        spacing += 2
      end
    end
    spacing -= 2
    (letter_index - 1).downto(0) do |index|
      if letter == 'A'
        next
      elsif index == 0
        puts 'A'.center(1 + (letter_index * 2))
      else
        spacing -= 2
        puts ("#{LETTERS[index]}" + " "*spacing + "#{LETTERS[index]}").center(1 + (letter_index * 2))
      end
    end
  end
end

Diamond.make_diamond('D')