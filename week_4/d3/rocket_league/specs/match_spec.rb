require( 'minitest/autorun' )
require 'minitest/rg'
require_relative( '../models/match' )
require_relative( '../models/team' )

class TestMatch < Minitest::Test

  def setup
    @home_team = Team.new({'name' => 'Inter', 'id' => 1})
    @away_team = Team.new({'name' => 'Juventus', 'id' => 2})

    options = {
      'home_team_id' => @home_team.id,
      'away_team_id' => @away_team.id,
      'home_team_score' => 3,
      'away_team_score' => 0
    }
    @match = Match.new(options)

  end

  def test_home_win
    result = @match.home_win
    expectation = true
    assert_equal(expectation, result)
  end

  def test_away_win
    result = @match.away_win
    expectation = false
    assert_equal(expectation, result)
  end

  def test_both_draw
    result = @match.both_draw
    expectation = false
    assert_equal(expectation, result)
  end

  def test_home_lost
    result = @match.home_lost
    expectation = false
    assert_equal(expectation, result)
  end

  def test_away_lost
    result = @match.away_lost
    expectation = true
    assert_equal(expectation, result)
  end

end