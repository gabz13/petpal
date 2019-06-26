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
    animal_type:  'Dog',
    description:  'really cute dog',
    size:        'Small',
    energy:       'Low',
    user:        gab,
    remote_photo_url:        url,
    location:      'Tel Aviv',
    latitude:      32.0853,
    longitude:     34.7818
  },
  {
    name:         'Milo',
    animal_type:  'Dog',
    description:  'really cute dog',
    size:        'Medium',
    energy:        'Low',
    user:        gab,
    remote_photo_url:        url,
    location:      'Haifa',
    latitude:      32.7940,
    longitude:     34.9896
  },
  {
    name:         'Harley',
    animal_type:  'Dog',
    description:  'really cute dog',
    size:        'Small',
    energy:        'Low',
    user:        gab,
    remote_photo_url:        url,
    location:      'North Tel Aviv',
    latitude:      32.0902,
    longitude:     34.7750
  }
]
Animal.create!(animals_attributes)
puts 'Finished!'
