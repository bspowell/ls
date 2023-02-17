=begin

outline
- method takes non-empty string
- returns middle character or characters of the string passed
- if argument has odd length, return 1 character
- if even length, return 2 characters

=end

def center_of(string)
  center = string.length / 2
  if string.length.odd?
    string[center]
  else
    string[center - 1] + string[center]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'