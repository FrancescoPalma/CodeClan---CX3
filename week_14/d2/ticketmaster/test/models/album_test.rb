require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "has a name" do
    assert_equal("Faster Than The Speed Of The Night", albums(:one).name)
  end

  test "has an artist" do
    assert_equal(artists(:one), albums(:one).artist)
  end
end
