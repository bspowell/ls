

class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
    raise ArgumentError unless triangle?
  end

  def kind
    if equilateral
      return  'equilateral'
    elsif isosceles
      return 'isosceles'
    elsif scalene
      return 'scalene'
    end
  end

  def triangle?
    return true if (@sides.all? { |n| n > 0 }) && legal_sides
    false
  end

  def legal_sides
    return true if ((@side1 + @side2) > @side3) && ((@side1 + @side3) > @side2) && ((@side2 + @side3) > @side1)
    false
  end
  
  def equilateral
    value = @side1
    @sides.all? { |n| n == value }
  end

  def isosceles
    total = 0
    @sides.each do |length|
      total += 1 if @sides.count(length) == 2
    end
    return true if total == 2
    false
  end

  def scalene
    @sides.none? { |length| @sides.count(length) >= 2}
  end

end


# equil = Triangles.new(2,2,2)
# equil2 = Triangles.new(2,2,3)
# equil3 = Triangles.new(3,4,5)
# # puts equil.isosceles
# puts equil2.isosceles
# puts equil3.isosceles
# puts equil.equilateral
# puts equil2.equilateral
# puts equil3.equilateral
# puts equil.scalene
# puts equil2.scalene
# # puts equil3.scalene

# puts equil.kind
# puts equil2.kind
# puts equil3.kind 

