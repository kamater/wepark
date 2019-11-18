# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  puts "Creating new garages"

Garage.destroy_all

user = User.first

10.times {
g = Garage.create!(user: user, capacity: 3, price: 50, location: "98 rue kleber 59170 Croix", description: "Magnifique Garage plein sud")
g.remote_photo_url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
g.save!
}

puts "finished"
