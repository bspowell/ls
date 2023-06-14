def say(words)
  yield(words) if block_given?
  puts "> " + words
end

# method invocation
say("hi there") do |block_param|
  puts block_param
end 