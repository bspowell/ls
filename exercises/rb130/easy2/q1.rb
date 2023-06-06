def step(first, last, increment)
  value = first
  until value > last 
    yield(value)
    value += increment
  end
  value
end


step(1, 10, 3) { |value| puts "value = #{value}" }