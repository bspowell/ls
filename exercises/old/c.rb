require 'pry'

class Cipher
  ALPHA = ("a".."z").to_a

  def self.encode(string)
    
    string.downcase!
    string.gsub!(/([^a-z0-9])/i, '') # remove spaces

    switch_chars(string) # switch characters
    split_string(string) # put into groups of 5
  end

  def self.switch_chars(string)
    string.each_char.with_index do |char, index|
      next unless ALPHA.include?(char)
      alpha_index = ALPHA.index(char)
      reverse_index = (-alpha_index - 1)
      string[index] = ALPHA.fetch(reverse_index)
    end
  end

  def self.split_string(string)
    current = 5
    while current < string.length
      string.insert(current, ' ')
      current += 6
    end

    string
  end
end

puts c = Cipher.encode('Testing, 1 2 3, testing.')