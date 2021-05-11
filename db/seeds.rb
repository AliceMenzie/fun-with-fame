# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Destroying old records'
# User.destroy.all
# puts 'Seeding started'

user1 = User.create(username: 'Bob', email: 'bob@email.com', password: 'bobbobbob')



10.times do 
    Celebrity.create(name: Faker::Artist.name)
end