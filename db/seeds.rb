# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


20.times do
  poney = Poneys.new(
    name: Faker::Creature::Horse.name
    color: Faker::Color.color_name
    description: Faker::Lorem.sentence
    special_power: Faker::Lorem.sentence
    nature: Faker::Lorem.sentence
    price_per_diem: Faker::Number.decimal(l_digits: 2)
    height: Faker::Number.decimal_part(digits: 2)
  )
  poney.save!
