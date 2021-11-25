# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Destroying database if we are in test environment'
puts "Killing ponies... :'( "
Poney.destroy_all
puts 'Poneys successfully killed. YOU MONSTER !'
puts "Deleting users..."
User.destroy_all
puts 'Users successfully destroyed !'
puts "Destroying bookings"
Booking.destroy_all
puts 'All bookings were erased.'
puts 'Database successfully destroyed !'

ju = User.create!(
  {
    email: 'jkmn@protonmail.com',
    password: 'azerty1234',
    address: '76 avenue du Général de Gaulle, 92250 La Garenne-Colombes'
  }
)
puts "User ju was created with email #{ju.email} and password #{ju.encrypted_password}"

mat = User.create!(
  {
    email: 'matth.duperrey@gmail.com',
    password: 'azerty1234',
    address: '9 rue Saint-Sébastien, 75011 Paris'
  }
)
puts "User ju was created with email #{mat.email} and password #{mat.encrypted_password}"
kate = User.create!(
  {
    email: 'cailleret.catherine00@gmail.com',
    password: 'azerty1234',
    address: '11 rue Albert Legrand, 62620 Barlin'
  }
)
puts "User ju was created with email #{kate.email} and password #{kate.encrypted_password}"
natures = ['gentil', 'joli', 'éclaté']
puts "Creating 6 fake ponies for ju"
6.times do
  Poney.new(
    {
      user_id: 1,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.decimal(l_digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end

puts "Creating 6 fake ponies for mat"
6.times do
  Poney.new(
    {
      user_id: 2,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.decimal(l_digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end

puts "Creating 6 fake ponies for kate"
6.times do
  Poney.new(
    {
      user_id: 3,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.decimal(l_digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end
