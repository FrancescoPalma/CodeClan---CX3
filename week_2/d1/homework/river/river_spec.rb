require ('minitest/autorun')
require ('minitest/rg')
require_relative('river')
require_relative('../fish/fish')
require_relative('../bears/bears')

class TestRiver < MiniTest::Test

  def setup
    fish1 = Fish.new('Nemo')
    fish2 = Fish.new('Blue')
    fish3 = Fish.new('Red')

    @all_fish = [fish1, fish2, fish3]

    @fish = River.new(@all_fish)
  end

end