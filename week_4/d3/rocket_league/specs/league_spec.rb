require( 'minitest/autorun' )
require 'minitest/rg'
require_relative( '../models/league.rb' )
require_relative( '../models/match.rb' )
require_relative( '../models/team.rb' )

class TestLeague < Minitest::Test

  def setup
    @team1 = Team.new({'name' => 'Inter', 'id' => 1})
    @team2 = Team.new({'name' => 'Juventus', 'id' => 2})
    @teams = [@team1, @team2]

    @match = Match.new({'home_team_id' => @team1.id, 'away_team_id' => @team2.id, 
                        'home_team_score' => 3, 'away_team_score' => 0})
    @matches = [@match]

    options = {'teams' => @teams, 'matches' => @matches}

    @league = League.new(options)
  end

  def test_list_teams
    result = @league.list_teams
    expectation = ['Inter', 'Juventus']
    assert_equal(expectation, result)
  end
  
end