require('minitest/autorun')
require('minitest/rg')

require_relative('../animal.rb')


class AnimalTest < MiniTest::Test

  def setup

    options = Animal.new({
      'id' => '1',
      'name' => 'Bolt',
      'type' => 'Dog',
      'breed' => 'Australian Shephard',
      'admission_date' => '23.04.19',
      'ready_for_adoption' => true,
      'owner_id' => '1'
      })

      @animal1 = Animal.new(options)

    end

#     1) Error:
# AnimalTest#test_admission_date:
# NoMethodError: undefined method `[]' for #<Animal:0x007fa3cf8c1f98>
#     /Users/user/codeclan_work/week_04/shelter_project/models/animal.rb:12:in `initialize'
#     animal_spec.rb:21:in `new'
#     animal_spec.rb:21:in `setup'

# errors for all 7 tests

    def test_id()
      result = @animal1.id
      assert_equal('1', result)
    end

    def test_name()
      result = @animal1.name
      assert_equal('Bolt', result)
    end

    def test_type()
      result = @animal1.type
      assert_equal('Dog', result)
    end

    def test_breed()
      result = @animal1.breed
      assert_equal('Australian Shephard', result)
    end

    def test_admission_date()
      result = @animal1.breed
      assert_equal('23.04.19', result)
    end

    def test_ready_for_adoption
      result = @animal.admission_date
      assert_equal(true, result)
    end

    def test_owner_id
      result = @animal.owner_id
      assert_equal('1', result)
    end


  end
