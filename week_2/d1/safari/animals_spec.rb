require ('minitest/autorun')
require ('minitest/rg')
require_relative('animals')

class TestAfricanSafari < Minitest::Test 

  def setup
    @safari = AfricanSafari.new('Lion', 'Elephant', 'Gazelle')
  end

  # Tests for Getters
  def test_safari_cat
    assert_equal('Lion', @safari.cat)
  end

  def test_safari_giant
    assert_equal('Elephant', @safari.giant)
  end

  def test_safari_ungulate
    assert_equal('Gazelle', @safari.ungulate)
  end

  # Tests for Setters
  def test_set_safari_cat
    @safari.cat = 'Leopard'
    assert_equal('Leopard', @safari.cat)
  end

  def test_set_safari_giant 
    @safari.giant = 'Rhino'
    assert_equal('Rhino', @safari.giant)
  end

  def test_set_safari_ungulate
    @safari.ungulate = 'Wildebeest'
    assert_equal('Wildebeest', @safari.ungulate)
  end

end