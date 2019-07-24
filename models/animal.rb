require_relative('../db/sql_runner.rb')


class Animal

  attr_reader :id, :owner_id
  attr_accessor :name, :type, :breed, :ready_for_adoption, :admission_date

  # do I need owner_id in attr_reader?

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @breed = options['breed']
    @admission_date = options['admission_date'].to_i
    @ready_for_adoption = options['ready_for_adoption'] ||= false
    @owner_id = options['owner_id']
    # “double-pipe equals” is an operator that assigns a value, much like = or our classic assignment operator,
    # but will only complete the assignment if the left side of our operation returns false or nil.

    # do I add owner_id here?
  end

  def save()
    sql = "INSERT INTO animals
    (
      name,
      type,
      breed,
      admission_date,
      ready_for_adoption,
      owner_id
      )
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING id"
    values = [@name, @type, @breed, @admission_date, @ready_for_adoption, @owner_id]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

  def update()
      sql = "UPDATE animals
      SET (name, type, breed, admission_date, owner_id, ready_for_adoption) = ($1, $2, $3, $4, $5, $6)
      WHERE id = $7;"
      values = [@name, @type, @breed, @admission_date, @owner_id, @adoption_ready, @id]
      SqlRunner.run(sql, values)
    end

    def self.delete_all()
  sql = "DELETE FROM animals;"
  SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM animals
    WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end


  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run(sql)
    result = animals.map { |animal| Animal.new(animal) }
    return result
  end

  def self.find(id)
      sql = "SELECT * FROM animals
      WHERE id = $1"
      values = [id]
      animal = SqlRunner.run(sql, values)
      result = Animal.new(animal.first)
      return result
    end

# def self.find_ready_for_adoption(ready_for_adoption)
#   sql = "SELECT * FROM animals
#   WHERE ready_for_adoption = $1"
#   # what does = $1 mean? Why not true?
#   values = [ready_for_adoption]
#   animals = SqlRunner.run(sql, values)
#   result = animals.map { |animal| Animal.new(animal) }
#   return result
# end


end
