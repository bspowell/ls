VAL = 'Global'

module Foo

  class Bar
    VAL = 'Local'

    def value1
      VAL
    end
  end
end

class Foo::Bar
  def value2
    VAL
  end
end

p Foo::Bar.new.value1
p Foo::Bar.new.value2


=begin
#13a — What will be returned by the value1 and value2 method calls?
#13b — If we omit the first line (VAL = ‘Global’), what will the returned 
values be then?
#13c — What line of code can you add to the Bar class inside the 
Foo module to allow value2 access to the same VAL as value1 ?

13a
Output:
"Local"
"Local"

With the first line, we will return "Local". We craeted a new instance of
class Bar and invoked value1 on it. Within that method, the constant
VAL is resolved as on line 4 VAL = "Local" is within it's lexical scope.

value2 is technically an extension of the Bar class withiin the Foo
module. It's class name Foo::Bar refers to that class. 
This is an example of monkey-patching.

13b 
The output would then be
"Local"
Then would be NameError as we woudln't be able to find the value for the 
Constant VAR.

13c
I would add VAL = "Local" within the Bar class as it then would be in
lexical scope. 

=end