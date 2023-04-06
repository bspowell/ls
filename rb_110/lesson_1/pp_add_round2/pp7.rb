statement = "The Flintstones Rock"

hash = {}
statement.delete(" ").each_char do |char|
  hash[char] ? hash[char] += 1 : hash[char] = 1
end

p hash