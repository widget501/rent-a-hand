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

user = User.create!(email: "joe@doe.com", password: "password", address: "123 Four Street, My Town", first_name: "Joe", last_name: "Doe")


begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Gardener", description: "A great groundsman", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end

begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Plumber", description: "A great plumber", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end

begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Driver", description: "A great driver", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end

begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Nanny", description: "The mother you never had", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end

begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Erotic Dancer", description: "A dancer to give you new life", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end

begin
  file = URI.open("https://res.cloudinary.com/dbsjj5ynm/image/upload/v1724965279/samples/smile.jpg")
  service = Service.new(title: "Handyman", description: "Great All-round", price: 300, location: "Bermuda")
  service.user = user
  service.photo.attach(io: file, filename: "new-image.jpg", content_type: "image/jpeg")
  service.save!
  puts "Service created successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to open URI: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
ensure
  file.close if file
end
