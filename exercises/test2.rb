def welcome(arg)
  yield(arg, 'boo')
end

welcome('Hello') { |num| puts num + 'there' } # => Hello there
welcome('Hey') { |num, num2| puts num + num2 + 'Joe' }   # => Hey Joe
# welcome('Hi!')                # => Hi! (there's a space after the !)