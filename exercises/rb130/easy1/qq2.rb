def compute(arg="nope")
  block_given? ? yield(arg) : arg
end


p compute("hi") { |num| num + "lo" } == "hilo"
p compute("hello") { 'a' + 'b' } == 'ab'
p compute == 'nope'