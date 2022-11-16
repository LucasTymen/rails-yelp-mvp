# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts " leaning database"
Restaurant.destroy_all

puts "creating restaurants"

domac = {name: "domac", address: "rue de trucmuche 75016", phone_number: 01544576, category: "belgian"}
looping = {name: "chez Loo ping", address: "toulouse", phone_number: 01264576, category: "chinese"}
stromboli = {name: "le stromboli", address: "marseilles" , category: "italian"}
gegene = {name: "chez gegène", address: "marseilles", phone_number: 01565266, category: "french"}
barrebar = {name: "le barre bar", address: "nantes", phone_number: 01541236, category: "belgian"}
lotus = {name: "le lotus", address: "paris", phone_number: 01544572, category: "japanese"}

restaurant_seed=[domac, looping, stromboli, gegene, barrebar, lotus]

restaurant_seed.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "created #{restaurant.name}"
end
