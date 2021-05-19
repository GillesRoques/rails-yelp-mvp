# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "060606060", category: "chinese" }
bocuse = { name: "Bocuse", address: "9 rue Dupond, Paris 93", phone_number: "060606061", category: "french" }
mamamia = { name: "Mamamia", address: "2 rue Tratorria, Milan E5", phone_number: "060606062", category: "italian" }
sushitop = { name: "Sushitop", address: "11 rue Dumail, Paris 93", phone_number: "060606063", category: "japanese" }
chezjojo = { name: "ChezJojo", address: "11 rue des Frites, Belgium Y7", phone_number: "060606064", category: "belgian" }


[dishoom, bocuse, mamamia, sushitop, chezjojo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
