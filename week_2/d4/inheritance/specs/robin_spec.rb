require('minitest/autorun')
require('minitest/rg')
require_relative('../robin')
require_relative('../behaviours/chirp')
require_relative('../behaviours/fly')

class RobinTest < MiniTest::Test

  def setup
    @robin = Robin.new(Chirp.new, Fly.new)
  end

  def test_robin_can_fly
    assert_equal('flying high', @robin.fly)
  end

  def test_robin_can_chirp
    assert_equal('chirp', @robin.call)
  end

end