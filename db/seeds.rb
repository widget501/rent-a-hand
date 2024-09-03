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

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
service = Service.new(title: "Gardener", description: "A great groundsman", price: 300, location: "Bermuda")
service.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
service.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
service = Service.new(title: "Plumber", description: "A great unclogger of turds",price: 300, location: "Bermuda")
service.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
service.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
service = Service.new(title: "Driver", description: "Jason Statham to the rescue", price: 300, location: "Bermuda")
service.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
service.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
service = Service.new(title: "Nanny", description: "The mm yo never had", price: 300, location: "Bermuda")
service.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
service.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
service = Service.new(title: "Dancer erotica", description: "Belly dancer to shake it up", price: 699, location: "Bermuda")
service.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
service.save
