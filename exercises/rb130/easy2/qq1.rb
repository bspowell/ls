
def step(first, last, step)
  current = first

  while current <= last
    yield(current)
    current += step
  end
  current
end

step(1, 10, 3) { |value| puts "value = #{value}" }
# value = 1
# value = 4
# value = 7
# value = 10