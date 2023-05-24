# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
Elementaire = {name: "Elementaire", address: "30 rue de lapix", category: "french"}
Plume = {name: "Plume", address: "5bis rue du louvre", category: "japanese"}
Mamapapa = {name: "mamapapa", address: "105 avenue des brigands", category: "italian"}
La_frite =  {name: "La_frite", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian"}

[Elementaire, Plume, Mamapapa, dishoom, La_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

