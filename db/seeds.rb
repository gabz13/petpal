puts 'Cleaning database...'

Animal.destroy_all
User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    first_name:   'Gabby',
    last_name:  'Simon',
    email:  'gab@petpal.com',
    password:        '123456'
  },
  {
    first_name:   'Mel',
    last_name:  'Weinstein',
    email:  'mel@petpal.com',
    password:        '123456'
  },
  {
    first_name:   'Daria',
    last_name:  'Makarova',
    email:  'daria@petpal.com',
    password:        '123456'
  }
]
gab = User.create!(users_attributes[0])
mel = User.create!(users_attributes[1])
dar = User.create!(users_attributes[2])
puts 'Finished!'



puts 'Creating animals...'
animals_attributes = [
  {
    name:         'Timo',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'small',
    energy:       'low',
    user_id:        gab.id


  },
  {
    name:         'Milo',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'medium',
    energy:        'low',
    user_id:        mel.id
  },
  {
    name:         'Harley',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'small',
    energy:        'low',
    user_id:        dar.id
  }
]
Animal.create!(animals_attributes)
puts 'Finished!'
