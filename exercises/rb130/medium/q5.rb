items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*args, arglast|
  puts args.join(', ')
  puts arglast
end


gather(items) do |arg1, *arg2, arg3|
  puts arg1
  puts arg2.join(', ')
  puts arg3
end


gather(items) do |arg1, *arg2|
  puts arg1
  puts arg2.join(', ')
end

gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1}, #{arg2}, #{arg3}, #{arg4}"
end