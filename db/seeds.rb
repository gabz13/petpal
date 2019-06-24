puts 'Cleaning database...'

Booking.destroy_all
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

url = "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjUyL7_i4LjAhVdAmMBHS2dAaQQjRx6BAgBEAU&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fcute%2520dog%2F&psig=AOvVaw2Blk373LKGrCA1iIqV6SNE&ust=1561464850235584.png"


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
