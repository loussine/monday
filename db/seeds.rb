# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "début de seed"
Car.destroy_all
Booking.destroy_all
User.destroy_all


User.create!(first_name: "John", last_name: "Doe", email: "johndoe@gmail.com", password: "123456")
Car.create!(model: "Ferrari", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
Car.create!(model: "Porsche", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
Car.create!(model: "Lamborghini", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://sf1.autoplus.fr/wp-content/uploads/autoplus/2021/01/ferrari-connaissez-vous-tous-les-rouges-marque-750x410.jpeg", user_id: User.first.id)
puts "fin de seed"
