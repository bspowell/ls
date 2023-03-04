def print_in_box(string)
puts endline = "+-" + ("-" * string.size) + "-+"
puts emptyline = "| " + (" " * string.size) + " |"
puts "| " + string + " |"
puts emptyline
puts endline
end

# print_in_box('')
print_in_box('To boldly go where no one has gone before.')


def print_in_box(str)
  puts <<-MSG
  +-#{'-' * str.length}-+
  | #{' ' * str.length} |
  | #{str} |
  | #{' ' * str.length} |
  +-#{'-' * str.length}-+
  MSG
end