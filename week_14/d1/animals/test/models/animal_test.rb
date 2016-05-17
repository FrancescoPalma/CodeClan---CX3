require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test "Animals have a name" do
    assert_equal("Tiger", animals(:one).name)
    assert_equal("Snake", animals(:two).name)
  end

  test "Animals have legs" do
    assert_equal(4, animals(:one).legs)
    assert_equal(0, animals(:two).legs)
  end

  test "Animals with legs walk" do
    assert animals(:one).move == "walk"
  end

  test "Animals that dont slither" do
    assert animals(:two).move == "slither"
  end
end
