require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry')

animal1 = Animal.new({
  'name' => 'Fluffy',
  'type' => 'Dog'
  'breed' => 'Australian Shephard',
  'admission_date' => '23.04.19',
  'ready_for_adoption' => true
  })

  animal1.save()

animal2 = Animal.new({
  'name' => 'Kitty',
  'type' => 'Cat'
  'breed' => 'British Shorthair',
  'admission_date' => '08.02.19',
  'ready_for_adoption' => true
  })

  animal2.save()

animal3 = Animal.new({
  'name' => 'Whiskers',
  'type' => 'Cat'
  'breed' => 'Scottish Fold',
  'admission_date' => '11.03.19',
  'ready_for_adoption' => false
  })

  animal3.save()

animal4 = Animal.new({
  'name' => 'Doggo',
  'type' => 'Dog'
  'breed' => 'Siberian Huskey',
  'admission_date' => '03.06.19',
  'ready_for_adoption' => true
  })
  animal4.save()

binding.pry
nil
