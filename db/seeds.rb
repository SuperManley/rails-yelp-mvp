# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# TODO: Write a seed to insert 100 posts in the database
puts "Creating restaurants....."
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name ,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save
end
puts ".....#{Restaurant.count} restaurants created."
