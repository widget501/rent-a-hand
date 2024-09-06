# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
Geocoder.configure(:timeout => 20)
Service.destroy_all

User.destroy_all

user = User.create!(email: "joe@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user1 = User.create!(email: "joe1@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user2 = User.create!(email: "joe2@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user3 = User.create!(email: "joe3@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user4 = User.create!(email: "joe4@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user5 = User.create!(email: "joe5@doe.com", password: "password", first_name: "Joe", last_name: "Doe")

  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1725626628/Beardy-Gardener-Leigh-1_xp471x.jpg")
  service = Service.new(title: "Gardener", description: "A great groundsman", price: 300, address: "123 Long Street, Cape Town")
  service.user = user
  service.photo.attach(io: file, filename: "smile.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  file = URI.open("https://www.istockphoto.com/photo/heating-engineer-installing-system-gm1482775856-509601580?utm_campaign=srp_photos_bottom&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fplumber%3Flicense%3Dfree&utm_medium=affiliate&utm_source=unsplash&utm_term=plumber%3A%3Areduced-affiliates%3Aquarter")

  service = Service.new(title: "Plumber", description: "A great plumber", price: 300, address: "45 Main Road, Rondebosch")

  service.user = user1
  service.photo.attach(io: file, filename: "two-ladies.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965272/samples/ecommerce/car-interior-design.jpg")
  service = Service.new(title: "Driver", description: "A great driver", price: 300, address: "789 Kloof Street, Gardens")
  service.user = user2
  service.photo.attach(io: file, filename: "car-interior-design.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965272/samples/people/boy-snow-hoodie.jpg")
  service = Service.new(title: "Nanny", description: "The mother you never had", price: 300, address: "67 Kloof Street, Gardens")

  service.user = user3
  service.photo.attach(io: file, filename: "boy-snow-hoodie.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1725626454/mobile_dog_l1k49e.jpg")

  service = Service.new(title: "Mobile Doggie Parlour", description: "A parlour to give your pooch a new look", price: 300, address: "89 Victoria Road, Camps Bay")

  service.user = user4
  service.photo.attach(io: file, filename: "two-ladies.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965271/samples/people/smiling-man.jpg")

  service = Service.new(title: "Handyman", description: "Great All-round", price: 300, address: "101 Buitenkant Street, District Six")

  service.user = user5
  service.photo.attach(io: file, filename: "smiling-man.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"

  # Booking.create(start_date: "2024/09/10", end_date: "2024/09/12", user_id: user)
