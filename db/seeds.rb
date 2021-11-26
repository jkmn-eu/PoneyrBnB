# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
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


ju_profil_photo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-1/p200x200/141032463_4251574781536072_402791680707569214_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=SVrlyD6-Y1YAX--8V-A&_nc_ht=scontent-cdt1-1.xx&oh=d1b8312a052174650d8cb033d133a372&oe=61C5EE04')
ju = User.new(
  {
    email: 'jkmn@protonmail.com',
    password: 'azerty1234',
    address: '76 avenue du Général de Gaulle, 92250 La Garenne-Colombes'
  }
)
ju.photo.attach(io: ju_profil_photo, filename: 'ju.jpg', content_type: 'image/jpg')
ju.save!

puts "User ju was created with email #{ju.email} and password #{ju.encrypted_password}"

mat_profil_photo = URI.open('https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-1/p200x200/141032463_4251574781536072_402791680707569214_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=SVrlyD6-Y1YAX--8V-A&_nc_ht=scontent-cdt1-1.xx&oh=d1b8312a052174650d8cb033d133a372&oe=61C5EE04')
mat = User.new(
  {
    email: 'matth.duperrey@gmail.com',
    password: 'azerty1234',
    address: '9 rue Saint-Sébastien, 75011 Paris'
  }

)
mat.photo.attach(io: mat_profil_photo, filename: 'mat.jpg', content_type: 'image/jpg')
mat.save!

puts "User ju was created with email #{mat.email} and password #{mat.encrypted_password}"


kate_profil_photo = URI.open('https://avatars.githubusercontent.com/u/91529926?v=4')
kate = User.new(
  {
    email: 'cailleret.catherine00@gmail.com',
    password: 'azerty1234',
    address: '11 rue Albert Legrand, 62620 Barlin'
  }
)
kate.photo.attach(io: kate_profil_photo, filename: 'kate.jpg', content_type: 'image/jpg')

puts "User ju was created with email #{kate.email} and password #{kate.encrypted_password}"

natures = ['gentil', 'joli', 'éclaté']
puts "Creating 6 fake ponies for ju"
6.times do
  Poney.new(
    {
      user: ju,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.number(digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end

puts "Creating 6 fake ponies for mat"
6.times do
  Poney.new(
    {
      user: mat,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.number(digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end

puts "Creating 6 fake ponies for kate"
6.times do
  Poney.new(
    {
      user: kate,
      name: Faker::Creature::Horse.name,
      color: Faker::Color.color_name,
      description: Faker::Lorem.sentence,
      special_power: Faker::Lorem.sentence,
      nature: natures.sample,
      price_per_diem: Faker::Number.number(digits: 2),
      height: Faker::Number.decimal_part(digits: 2),
      profile_pic_url: Faker::LoremFlickr.image(size: "250x250", search_terms: ['poney'])
    }
  ).save!
end
