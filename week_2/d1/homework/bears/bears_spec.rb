require ('minitest/autorun')
require ('minitest/rg')
require_relative('bears')
require_relative('../fish/fish')
require_relative('../river/river')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new('roar', 'Yogi', 'Grizzly', [])
    @bear2 = Bear.new('roar', 'Brown', 'Kodiak', [])

    @fish1 = Fish.new('Nemo')
    @fish2 = Fish.new('Blue')

    @fish = [@fish1, @fish2]
  end

  def test_roar
    assert_equal('roar', @bear1.roar)
    assert_equal('roar', @bear2.roar)
  end

  def test_name
    assert_equal('Yogi', @bear1.name)
    assert_equal('Brown', @bear2.name)
  end

  def test_type
    assert_equal('Grizzly', @bear1.type)
    assert_equal('Kodiak', @bear2.type)
  end

  def test_tummy
    assert_equal([], @bear1.tummy)
    assert_equal([], @bear2.tummy)
  end

  def test_remove_fish_from_river
    assert_equal([@fish1], @bear1.remove_fish_from_river(@fish, @fish1))
    assert_equal([@fish2], @bear2.remove_fish_from_river(@fish, @fish2))
  end

  def test_add_fish_to_tummy
      assert_equal([[@fish1]], @bear1.add_fish_to_tummy(@fish1))
      assert_equal([[@fish2]], @bear2.add_fish_to_tummy(@fish2))
  end

end