

def compute(arg='Does not compute.')
  block_given? ? yield(arg) : 'Does not compute.'
end



puts compute(5) { |num| num + 3 } == 8
puts compute('a') { |letter| letter + 'b' } == 'ab'
puts compute == 'Does not compute.'