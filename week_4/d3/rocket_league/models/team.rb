require_relative( '../db/sql_runner' )

class Team

  attr_reader( :id, :name, :total_points )

  def initialize( options )
    @id = options['id']
    @name = options['name']
    @total_points = options['total_points']
  end

  def self.all()
    sql = "SELECT * FROM teams"
    teams = SqlRunner.execute( sql )
    return teams.map { |team| Team.new( team ) }
  end

  def self.create( options )
    sql = "INSERT INTO teams (
        name) 
        VALUES (
        '#{ options['name'] }' )"
    SqlRunner.execute( sql )
    return Team.new( Team.last_entry() )
  end

  def self.last_entry
    sql = "SELECT * FROM teams ORDER BY id DESC limit 1;"
    return SqlRunner.execute( sql ).first()
  end

  def self.delete_all 
    sql = "DELETE FROM teams"
    SqlRunner.execute( sql )
  end

end
