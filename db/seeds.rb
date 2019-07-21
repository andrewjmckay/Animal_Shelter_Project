require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry')

animal1 = Animal.new({
  'name' => 'Gryffindor',
  'logo' => './gryffindor.jpg'
  })

  animal1.save()

animal2 = Animal.new({
  'name' => 'Ravenclaw',
  'logo' => './gryffindor.jpg'
  })

  animal2.save()

animal3 = Animal.new({
  'name' => 'Slytherin',
  'logo' => './gryffindor.jpg'
  })

  house3.save()

animal4 = Animal.new({
  'name' => 'Hufflepuff',
  'logo' => './gryffindor.jpg'
  })

  animal4.save()

binding.pry
nil
