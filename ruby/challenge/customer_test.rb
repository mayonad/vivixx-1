require 'test/unit'
require_relative 'customer'
class CustomerTest < Test::Unit::TestCase
  def test_sum
    puts "Type 1st number: "
    @first = gets.chomp.to_f
    puts "Type 2nd number: "
    @second = gets.chomp.to_f

    @summ = @first + @second
    customer = Customer.new(@first, @second)
    assert_equal("#{@summ.to_f}", customer.sum)
  end
end
