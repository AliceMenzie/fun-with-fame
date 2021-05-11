# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying old records'
User.destroy_all
Celebrity.destroy_all
Experience.destroy_all
Booking.destroy_all
puts 'Seeding started'

user1 = User.create(username: 'Bob', email: 'bob@email.com', password: 'bobbobbob')

booking1 = Booking.create(total_price: rand(0..10_000))
10.times do 
    Celebrity.create(name: Faker::Artist.name)
end

# 5.times do
#     Experience.create(activities: "playing #{Faker::Game.title}", price: rand(0..10_000), duration: rand(1..10), location: Faker::Nation.capital_city)
#     Experience.create(activities: "watching #{Faker::Movie.title}", price: rand(0..10_000), duration: rand(1..10), location: Faker::Nation.capital_city)
#     Experience.create(activities: "listening to #{Faker::Music.band}", price: rand(0..10_000), duration: rand(1..10), location: Faker::Nation.capital_city)
# end