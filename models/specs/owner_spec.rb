require('minitest/autorun')
require('minitest/rg')

require_relative('../owner.rb')


class OwnerTest < MiniTest::Test

  def setup
    owner = Owner.new({
      'id' => '1',
      'name' => 'Ruairidh Sutherland',
      })

      @owner1 = Owner1.new(owner)
  end

#   1) Error:
# OwnerTest#test_id:
# NameError: uninitialized constant OwnerTest::Owner1
# Did you mean?  Owner
#    owner_spec.rb:15:in `setup'
# 2 errors

  def test_id()
    result = @owner1.id
    assert_equal('1', result)
  end

  def test_name()
    result = @owner1.name
    assert_equal('Ruairidh Sutherland', result)
  end

end
