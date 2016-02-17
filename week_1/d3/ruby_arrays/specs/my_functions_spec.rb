require( 'minitest/autorun' )
require_relative( '../my_functions' )

class TestMyFunctions < MiniTest::Test

  def test_grab_array()
    result = grab_first( [1,2,3,4,5] )
    assert_equal( 1, result )
  end

  def test_index_at()
    result = index_at([1, 2, 3, 4, 5], 1)
    assert_equal(2, result)
  end

  def test_last_index_at()
    result = last_index_at(['Francesco', 'Palma'], 1)
    assert_equal('Palma', result)
  end

end