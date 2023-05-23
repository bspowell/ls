class Foo
  @@var = 1

  def self.var
    @@var
  end
end

class Bar < Foo
  @@var = 2
end

puts Foo.var 
puts Bar.var 


=begin
#15 — What will be output when the last 2 lines of code get executed?

2
2

=end
