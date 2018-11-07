# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0041 2343 5467',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0041 2310 5400',
    category:     'italian'
  },
  {
    name:         'Sukiya',
    address:      '56A Shoreditch High St, TOKYO E1 6PQ',
    phone_number: '0081 2310 6666',
    category:     'japanese'
  },
  {
     name:         'Leon de Bruxelles',
     address:      'rue de Moule, Paris E1 6PQ',
     phone_number: '0031 2310 7620',
     category:     'belgian'
  },
  {
    name:         'Crazy Cowboy',
    address:      'Soi 11, Bangkok',
    phone_number: '0078 6969 6969',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
