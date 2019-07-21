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
    @ready_for_adoption = options['ready_for_adoption'] ||= false
    # “double-pipe equals” is an operator that assigns a value, much like = or our classic assignment operator,
    # but will only complete the assignment if the left side of our operation returns false or nil.
    @admission_date = options['admission_date']
    # do I add owner_id here?
  end

end
