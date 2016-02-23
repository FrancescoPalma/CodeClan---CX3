require ('minitest/autorun')
require ('minitest/rg')
require_relative('fish')
require_relative('../river/river')
require_relative('../bears/bears')

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new('Nemo')
    @fish2 = Fish.new('Blue')
  end

  def test_fish_name
    assert_equal("Nemo", @fish1.name)
    assert_equal('Blue', @fish2.name)
  end

end