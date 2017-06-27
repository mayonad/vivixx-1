class Triangle
  attr_accessor :baseLength, :height

  def initialize(baseLength, height)
    @baseLength = baseLength
    @height = height
  end
end

sankaku = Triangle.new(10.0, 3.0)
puts sankaku.baseLength
puts sankaku.height
