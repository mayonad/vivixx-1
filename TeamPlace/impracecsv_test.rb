require 'test/unit'
class TestData < Test::Unit::TestCase
  load_data("bingebeetlemenu.csv")
  def test_empty?(data)
    expected, target = data
    assert_equal(expected, target.empty?)
  end
end
