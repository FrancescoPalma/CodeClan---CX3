require 'pg'
require 'pry-byebug'

class Pizza

  attr_reader :id, :first_name, :last_name, :type, :quantity

  def initialize(options)
    @id = nil || options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @type = options['type']
    @quantity = options['quantity'].to_i
  end

  def full_name_with_space
    "#{first_name} #{last_name}"
  end

  def total
    @quantity * 10
  end

  def save
    sql = "INSERT INTO pizzas (
      first_name, 
      last_name,
      type,
      quantity
      ) VALUES (
      '#{@first_name}',
      '#{@last_name}',
      '#{@type}',
      #{@quantity}
      )"
      Pizza.run_sql(sql)
  end

  def self.all
    pizzas = Pizza.run_sql("SELECT * FROM pizzas")
    result = pizzas.map {|pizza| Pizza.new(pizza)}
    return result
  end

  def self.select(id)
    pizza = Pizza.run_sql("SELECT * FROM pizzas WHERE id = #{id}")
    result = Pizza.new(pizza.first)
    return result
  end

  def self.update(params)
    sql = "UPDATE pizzas SET
      first_name='#{params['first_name']}', 
      last_name='#{params['last_name']}',
      type='#{params['type']}',
      quantity='#{params['quantity']}'
      WHERE id='#{params['id']}'"
    Pizza.run_sql(sql)
  end

  def self.destroy(id)
    Pizza.run_sql("DELETE FROM pizzas WHERE id = #{id}")
  end

  private

  def self.run_sql(sql)
    begin 
      db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
      result = db.exec(sql)
      return result
    ensure
      db.close
    end
  end

end