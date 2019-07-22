require_relative('../db/sql_runner.rb')

class Owner

  attr_reader :id
  attr_accessor :name, :pet, :owned_pet

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @owned_pet = []
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

end
