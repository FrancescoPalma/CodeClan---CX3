require 'pg' 
require_relative '../db/sql_runner'
require_relative 'jedi'

class Lightsaber

  attr_reader :id, :name, :jedi 

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @jedi = Jedi.find(options['jedi_id'])
  end

  def save()
    sql = "INSERT INTO Lightsabers (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql(sql)
  end

  def self.all()
    sql = "SELECT * FROM Lightsabers"
    sabers = SqlRunner.run_sql(sql)
    result = sabers.map { |s| Lightsaber.new(s) }
    return result
  end

end