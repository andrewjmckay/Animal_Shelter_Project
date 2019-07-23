require_relative('../db/sql_runner.rb')
require_relative('../animal.rb')

class Owner

  attr_reader :id
  attr_accessor :name, :pet
  # , :owned_pet

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    # @owned_pet = []
    # do I need empty array to put pets into? options?
  end

  def save()
    sql = "INSERT INTO owner
    (
      name,
      owned_pet
      )
      VALUES ($1, $2)
      RETURNING id"
    values = [@name, @owned_pet]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

  def self.all()
      sql = "SELECT * FROM owners"
      owners = SqlRunner.run(sql)
      result = owners.map { |owner| Owner.new(owner) }
      return result
  end

  def animals()
    # write sql to find all animals whose owner_id is the same as the owner's id (@id)
    # return all animals via SqlRunner
    # map the data to create animal objects
  end

# how to return adopted animals?

end


@owner.animals()
