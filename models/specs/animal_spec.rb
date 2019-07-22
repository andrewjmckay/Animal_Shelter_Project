require('minitest/autorun')
require('minitest/rg')

require_relative('../animal.rb')
require_relative('../owner.rb')

class Animal < MiniTest::Test

  def setup

@options = Animal.new({
  'name' => 'Bolt',
  'type' => 'Dog'
  'breed' => 'Australian Shephard',
  'admission_date' => '23.04.19',
  'ready_for_adoption' => true
  })

  end

def test_assign_to_owner
  #assert_equal(6, @pet_shop.stock_count())
end

def test_are_they_adoptable
  #assert_equal(6, @pet_shop.stock_count())
end

def test_list_all_adopted_animals
  #assert_equal(6, @pet_shop.stock_count())
end
