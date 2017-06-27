require 'test/unit'
require_relative 'customer'
class CustomerTest < Test::Unit::TestCase
  def test_sum
    puts "Type 1st number: "
    @first = gets.chomp.to_f
    puts "Type 2nd number: "
    @second = gets.chomp.to_f
    @summ = @first + @second
    customer = Customer.new(@first, @second, @summ)
    assert_equal(@first + @second, customer.sum)
  end
end
