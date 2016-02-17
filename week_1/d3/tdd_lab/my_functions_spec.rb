require( 'minitest/autorun' )
require_relative( 'my_functions' )

class TestMyFunctions < MiniTest::Test

  def test_add_array_lengths
    prices = [ 1.23, 6.98, 8.43, 2.45 ]
    costs = [ 4.23, 1.12, 0.52, 8.67 ]
    result = (prices + costs).length
    assert_equal(8, result)
  end

  def test_return_sum
    data = [ 1, 2, 3, 4, 5 ]
    result = return_sum(data)
    assert_equal(15, result)
  end

  def test_find_item
    hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
    assert_equal(true, find_item('Ravenclaw', hogwarts))
  end

  def test_return_tony 
    teacher_wallets = {
      'Tony' => 12,
      'Kat'  => 10,
      'Val'  => 1356,
      'Rick' => 1
    }
    result = return_tony
    assert_equal('Tony', result)
  end

  def test_all_capitals
    countries = {
      uk: {
        capital: 'London',
        population: 60
      },
      france: {
        capital: 'Paris',
        population: 70
      },
      italy: {
        capital: 'Rome',
        population: 56
      }
    }
    assert_equal([ 'London', 'Paris', 'Rome' ], all_capitals(countries))
  end

end