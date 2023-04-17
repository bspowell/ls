=begin

Problem:
- a collection of spelling blocks has two letters per block
- only 1 letter in each block can be used
- if one letter is used, then the block is done. 
- write a method
- that returns boolean 
- returns true, if the word passed in as an argument can be spelled from this set of blocks
- false otherwise



Input:string
Output: boolean

Rules:
- if letter is used in a block, then second letter cannot be used
- casesize doesn't matter
- 

Examples/Modeling:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

Algorithm:
- given a string
- take global hash and assign it to new hash variable
- break string into chars, iterate over array of chars
  - if letter is included in new_hash as a key or value
    - remove from new_hash
    - go to next letter
  - if not included, then return false
- return true

=end


HASH = {
"B" => "O",
"D" => "Q",
"C" => "P",
"N" => "A",
"G" => "T",
"R" => "E",
"F" => "S",
"J" => "W",
"H" => "U",
"V" => "I",
"L" => "Y",
"Z" => "M"
}

def block_word?(string)
  new_hsh = HASH.dup
  string.upcase.chars.each do |char|
    if new_hsh.key?(char)
      new_hsh.delete(char)
    elsif new_hsh.value?(char)
      new_hsh.delete(new_hsh.key(char))
    else
      return false
    end
  end
  true
end
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true