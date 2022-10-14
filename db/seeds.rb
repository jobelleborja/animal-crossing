# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Villagers.destroy_all

villagers = JSON.parse(URI.open("https://acnhapi.com/v1a/").read)

villagers.each do |villagers|
  gender = Gender.find_or_create_by(name: category_name)
  v = Villagers.new
  v.id = villagers["id"]
  v.name = villagers["name"]["name-USen"]
  v.saying = villagers["saying"]
  v.save
end


