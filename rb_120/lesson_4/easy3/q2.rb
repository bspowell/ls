class Greeting
  def self.greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# If we call Hello.hi we get an error message. How would you fix this?

# you can add self before the hi method - self.hi. This will make it a 
# class method. Then add self to the greet method in class Greeting. Then
# when we call it using class Hello, it can be called.

Hello.hi