class Animal

  def jump
    'jumping!'
  end

  def run
    'running!'
  end

end

class Dog < Animal
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Animal
  def speak
    'meow'
  end
  
end