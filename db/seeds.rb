require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry')

animal1 = Animal.new({
  'name' => 'Bolt',
  'type' => 'Dog'
  'breed' => 'Australian Shephard',
  'admission_date' => '23.04.19',
  'ready_for_adoption' => true
  })

  animal1.save()

animal2 = Animal.new({
  'name' => 'Garfield',
  'type' => 'Cat'
  'breed' => 'British Shorthair',
  'admission_date' => '08.02.19',
  'ready_for_adoption' => true
  })

  animal2.save()

animal3 = Animal.new({
  'name' => 'Simba',
  'type' => 'Cat'
  'breed' => 'Scottish Fold',
  'admission_date' => '11.03.19',
  'ready_for_adoption' => false
  })

  animal3.save()

animal4 = Animal.new({
  'name' => 'Dug',
  'type' => 'Dog'
  'breed' => 'Siberian Huskey',
  'admission_date' => '03.06.19',
  'ready_for_adoption' => true
  })
  animal4.save()

  animal5 = Animal.new({
    'name' => 'Gromit',
    'type' => 'Dog'
    'breed' => 'Pomeranian',
    'admission_date' => '29.02.19',
    'ready_for_adoption' => false
    })

    animal5.save()

  animal6 = Animal.new({
    'name' => 'Thomas O'Malley',
    'type' => 'Cat'
    'breed' => 'Ragamuffin',
    'admission_date' => '09.05.19',
    'ready_for_adoption' => true
    })

    animal6.save()

  animal7 = Animal.new({
    'name' => 'Grumpy Cat',
    'type' => 'Cat'
    'breed' => 'Ragdoll',
    'admission_date' => '13.06.19',
    'ready_for_adoption' => false
    })

    animal7.save()

  animal8 = Animal.new({
    'name' => 'Scooby-Doo',
    'type' => 'Dog'
    'breed' => 'Akita Inu',
    'admission_date' => '25.02.19',
    'ready_for_adoption' => true
    })
    animal8.save()

binding.pry
nil
