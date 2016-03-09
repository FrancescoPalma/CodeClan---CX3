class League

  attr_reader :teams, :matches

  def initialize(options)
    @teams = options['teams']
    @matches = options['matches']
  end

  def list_teams
    @teams.map(&:name)
  end

end