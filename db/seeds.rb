# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'


#10.times do
 # Customer.create(name: Faker::Name.name, email: Faker::Internet.email)
#end


#10.times do
 # Movie.create(
  #  title: Faker::Movie.title,
   # genre: Faker::Book.genre,
    #year: rand(1980..2023),
    #customer: Customer.order("RANDOM()").first
  #)
#end


# Crear clientes
customer1 = Customer.create!(name: "Juan Pérez", email: "juan@example.com")
customer2 = Customer.create!(name: "María Gómez", email: "maria@example.com")

# Crear películas y asignarlas a clientes
movie1 = Movie.create!(title: "Chinatown", genre: "Metafiction", release_year: 1985, customer: customer1)
movie2 = Movie.create!(title: "The Grapes of Wrath", genre: "Short story", release_year: 2021, customer: customer2)

# Crear películas sin clientes asignados
Movie.create!(title: "The Prestige", genre: "Suspense/Thriller", release_year: 2014)
Movie.create!(title: "Die Hard", genre: "Short story", release_year: 2011)

