require_relative('../db/sql_runner.rb')

class Owner

  attr_reader :id
  attr_accessor :name, :pet

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @pet = []
  end

end
