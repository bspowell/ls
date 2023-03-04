names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  names.shift
  break if names.size == 0
end

# count = 0
# loop do 
#   names.delete_at(count)
#   break if names.size == 0
# end

p names