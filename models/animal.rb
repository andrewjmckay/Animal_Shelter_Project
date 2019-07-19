require_relative('../db/sql_runner.rb')


class Animal

  attr_reader :id
  attr_accessor :name, :type, :breed, :ready_for_adoption, :admission_date, :owner_id

  # do I need owner_id in attr_accessor

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @breed = options['breed']
    @ready_for_adoption = options['ready_for_adoption']
    @admission_date = options['admission_date']
    # do I add owner_id here?
  end

end
