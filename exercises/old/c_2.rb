class Cipher
  ALPHA = ("a".."z").to_a

  def self.encode(string)
    # remove spaces
    array = string.downcase.chars
    array.select! do |letter|
      letter.match(/([a-z]|[0-9])/i)
    end
    # switch characters
    switch_chars(array)
    # put into groups of 5
    split_array(array)
  end

  def self.switch_chars(array)
    array.each_with_index do |char, index|
      next unless ALPHA.include?(char)
      alpha_index = ALPHA.index(char)
      reverse_index = (-alpha_index - 1)
      array[index] = ALPHA.fetch(reverse_index)
    end
  end

  def self.split_array(array)
    final_arr = []
    current = 0
    while current < array.length
      final_arr << array[current, 5]
      current += 5
    end

    final_arr.map!(&:join).join(' ')
  end
end