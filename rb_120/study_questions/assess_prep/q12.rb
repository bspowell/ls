module Walk
  STR = "Walking"
end

module Run
  STR = "Running"
end

module Jump
  STR = "Jumping"
end

class Bunny
  include Jump
  include Walk
  include Run
end

class Bugs < Bunny; end

p Bugs.ancestors
p Bugs::STR

=begin
#12 — What will the last two lines of code output?

[Bugs, Bunny, Run, Walk, Jump, Object, Kernel, BasicObject]
"Running"

When we use the namespace resolution method, we are telling 
Ruby where to look for the constant STR. It first looks within 
it's lexical scope, then since it can't find it within Bugs, it 
looks within its inhertiance chain. The first occurance it finds
is within the module Run and returns "Running" which is outputted
to the screen.

=end 