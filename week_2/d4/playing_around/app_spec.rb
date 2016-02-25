require('minitest/autorun')
require_relative('app')

class TestApp < MiniTest::Test

  def test_array_has_size_2
    array = Pokemon::Array.new
    assert_equal('Charmander', array.[](3))
  end

  def test_value_of_pi
    assert_equal(100, CrazyMath::Pi)
  end

end