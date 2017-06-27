require 'test/unit'
require_relative 'customer'
class CustomerTest < Test::Unit::TestCase
  def test_first_name
    customer = Customer.new('John', 'Smith', 18)
    assert_equal('John', customer.first_name)
  end
  def test_last_name
    customer = Customer.new('John', 'Smith', 18)
    assert_equal('Smith', customer.last_name)
  end
  def test_full_name
    customer = Customer.new('John', 'Smith', 18)
    assert_equal('John Smith', customer.full_name)
  end
  def test_age
    customer = Customer.new('John', 'Smith', 18)
    assert_equal(18, customer.age)
  end
end
