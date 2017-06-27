class Customer
attr_accessor :num1, :num2
  def initialize(num1, num2)
    @num1 = num1.to_f
    @num2 = num2.to_f
  end
  def sum
    @sum = @num1 + @num2
    "#{@sum}"
  end
end
