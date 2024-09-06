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

Service.destroy_all

User.destroy_all

Geocoder.configure(:timeout => 20)

user = User.create!(email: "joe@doe.com", password: "password", first_name: "Joe", last_name: "Doe")
user1 = User.create!(email: "a@doe.com", password: "password", first_name: "A name", last_name: "Doe")
user2 = User.create!(email: "b@doe.com", password: "password", first_name: "B name", last_name: "Doe")
user3 = User.create!(email: "c@doe.com", password: "password", first_name: "C name", last_name: "Doe")
user4 = User.create!(email: "d@doe.com", password: "password", first_name: "D name", last_name: "Doe")
user5 = User.create!(email: "e@doe.com", password: "password", first_name: "E name", last_name: "Doe")

# Gardener
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Gardener", description: "A great groundsman", price: 300, address: "162 Lancia Street, Lynnwoord Ridge, Pretoria")
  service.user = user1
  service.photo.attach(io: file, filename: "smile.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Gardener created successfully!"

# Plumber
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965277/samples/two-ladies.jpg")
  service = Service.new(title: "Plumber", description: "A great plumber", price: 300, address: "45 Main Road, Rondebosch, Cape Town")
  service.user = user1
  service.photo.attach(io: file, filename: "two-ladies.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Plumber created successfully!"

# Driver
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965272/samples/ecommerce/car-interior-design.jpg")
  service = Service.new(title: "Driver", description: "A great driver", price: 300, address: "789 Kloof Street, Gardens, Cape Town")
  service.user = user2
  service.photo.attach(io: file, filename: "car-interior-design.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Driver created successfully!"

# Nanny
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965272/samples/people/boy-snow-hoodie.jpg")
  service = Service.new(title: "Nanny", description: "The mother you never had", price: 300, address: "67 Kloof Street, Gardens, Cape Town")
  service.user = user3
  service.photo.attach(io: file, filename: "boy-snow-hoodie.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Nanny created successfully!"

# Mobile Doggie Parlour
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965277/samples/two-ladies.jpg")
  service = Service.new(title: "Mobile Doggie Parlour", description: "A parlour to give your pooch a new look", price: 300, address: "89 Victoria Road, Camps Bay, Cape Town")
  service.user = user4
  service.photo.attach(io: file, filename: "two-ladies.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Doggie Parlour created successfully!"

# Handyman
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965271/samples/people/smiling-man.jpg")
  service = Service.new(title: "Handyman", description: "Great All-round", price: 300, address: "101 Buitenkant Street, District Six, Cape Town")
  service.user = user5
  service.photo.attach(io: file, filename: "smiling-man.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Handyman created successfully!"

# Photographer
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Photographer", description: "A great Photographer", price: 300, address: "88 Buitenkant Street, District Six, Cape Town")
  service.user = user
  service.photo.attach(io: file, filename: "smile.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service Photographer created successfully!"

# Booking.create(start_date: "2024/09/10", end_date: "2024/09/12", user_id: user)
