require('minitest/autorun')
require('minitest/rg')

require_relative('../owner.rb')


class Owner < MiniTest::Test

  def setup
    owner = Owner.new({
      'name' => 'Ruairidh Sutherland',
      })

      @owner1 = Owner1.new(owner)
  end

    def test_list_all_owners
      assert_equal(6, @pet_shop.stock_count())
    end

end
