num = 4

def yield_to_block(arg)
  yield arg if block_given?
end

yield_to_block(num) do |value|
  puts value + yield_to_block(value)
end

arr = [20, 40, 60]
hsh = { a: 3, b: 2, c: 5 }

def map(qux)
  qux += 2
end