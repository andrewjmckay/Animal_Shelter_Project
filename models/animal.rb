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
    # “double-pipe equals” is an operator that assigns a value, much like = or our classic assignment operator,
    # but will only complete the assignment if the left side of our operation returns false or nil.

    # do I add owner_id here?
  end

  def save()
    sql = "INSERT INTO animal
    (
      name,
      type,
      breed,
      admission_date,
      ready_for_adoption
      )
      VALUES ($1, $2, $3, $4, $5)
      RETURNING id"
    values = [@name, @type, @breed, @admission_date, @ready_for_adoption]
    @id = SqlRunner.run(sql, values).first["id"].to_i
  end

end
