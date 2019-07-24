require_relative('../db/sql_runner.rb')
require_relative('animal.rb')

class Owner

  attr_reader :id
  attr_accessor :name, :pet
  # , :owned_pet

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO owners
    (
      name
      )
      VALUES ($1)
      RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

  def update()
    sql = "UPDATE owners
    SET (name) = ($1) WHERE id = $2;"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
      sql = "DELETE FROM owners"
      SqlRunner.run(sql)
    end

  def self.all()
      sql = "SELECT * FROM owners"
      owners = SqlRunner.run(sql)
      result = owners.map { |owner| Owner.new(owner) }
      return result
  end

    def animals()
      sql = "SELECT * FROM animals
      WHERE owner_id = $1"
      values = [@id]
      results = SqlRunner.run(sql, values)
      adopted_animals = results.map { |animal| Animal.new(animal)}
      return adopted_animals
    end

end
