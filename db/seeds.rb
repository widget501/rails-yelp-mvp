# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seeds ############################################

Restaurant.destroy_all

Restaurant.create!(
  name: "Belgian Fried Chicken",
  address: "Bloemfontein",
  phone_number: "+27 12 345 6789",
  category: "belgian"
)

Restaurant.create!(
  name: "The Curry Wok",
  address: "Durban",
  phone_number: "+27 13 174 9548",
  category: "chinese"
)

Restaurant.create!(
  name: "Le Domain",
  address: "Parys",
  phone_number: "+27 14 369 3856",
  category: "french"
)

Restaurant.create!(
  name: "Giovannis",
  address: "Seapoint",
  phone_number: "+27 21 368 2345",
  category: "italian"
)

Restaurant.create!(
  name: "Sukikaki",
  address: "Brakpan",
  phone_number: "+27 11 345 9911",
  category: "japanese"
)
