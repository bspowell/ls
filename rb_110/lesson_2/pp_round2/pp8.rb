# Using the each method, write some code to output all of the vowels from the strings.


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  hsh[key].each do |string|
    string.chars.each do |char|
      puts char if char =~ /[aeiou]/
    end
  end
end