class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
    @icecream = []
    create_icecream(filling_type, glazing)
  end

  def create_icecream(filling, glaze)
    filling == nil ? @icecream << "Plain" : @icecream << filling
    @icecream << glaze unless glaze == nil
  end

  def to_s
    @icecream.size > 1 ? @icecream.join(' with ') : @icecream.join
  end
end


donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
  # => "Plain"

puts donut2
  # => "Vanilla"

puts donut3
  # => "Plain with sugar"

puts donut4
  # => "Plain with chocolate sprinkles"

puts donut5
  # => "Custard with icing"