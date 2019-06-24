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
  }
]
gab = User.create!(users_attributes[0])

puts 'Finished!'

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"


puts 'Creating animals...'
animals_attributes = [
  {
    name:         'Timo',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'small',
    energy:       'low',
    user:        gab,
    remote_photo_url:        url
  },
  {
    name:         'Milo',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'medium',
    energy:        'low',
    user:        gab,
    remote_photo_url:        url
  },
  {
    name:         'Harley',
    animal_type:  'dog',
    description:  'really cute dog',
    size:        'small',
    energy:        'low',
    user:        gab,
    remote_photo_url:        url
  }
]
Animal.create!(animals_attributes)
puts 'Finished!'
