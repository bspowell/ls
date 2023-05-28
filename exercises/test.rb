class Foo
  def method_a
    "Justice" + self.all
  end

  def method_b(other)
    "Justice" + other.exclamate  # "Justice for all!!!"
  end

  private

  def all
    " for all"
  end

  def exclamate
    all + "!!!" # " for all!!!"
  end
end

class Bar < Foo

  private

  def fornot
    "fornot"
  end
end

foo = Foo.new
puts foo.fornot
# puts foo.method_b(foo)

# puts Foo.all