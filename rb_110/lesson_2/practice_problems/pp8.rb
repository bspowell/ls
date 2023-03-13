hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# Using the each method, write some code to output all of the vowels from the strings.

# a,e,i,o,u,y
# iterate through hash, interate through value, split elements into char array, iterate through chars
# see if it includes vowels, if yes, output char

hsh.each do |key, value|
  value.each do |element|
    chars_array = element.chars
    chars_array.each do |character|
      if ['a','e','i','o','u','y'].include?(character)
        puts character
      end
    end
  end
end
