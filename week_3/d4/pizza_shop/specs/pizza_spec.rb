require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/pizza'

class TestPizza < Minitest::Test

  def setup
    options = {
      'first_name' => 'Tony',
      'last_name' => 'Goncalves',
      'type' => 'Margherita',
      'quantity' => '10'
    }

    @pizza = Pizza.new(options)
  end

  def test_first_name
    assert_equal("Tony", @pizza.first_name)
  end

  def test_last_name
    assert_equal("Goncalves", @pizza.last_name)
  end

  def test_full_name_with_space
    assert_equal("Tony Goncalves", @pizza.full_name_with_space)
  end

  def test_total
    assert_equal(100, @pizza.total)
  end

end