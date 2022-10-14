# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Villager.destroy_all
Gender.destroy_all

villagers = JSON.parse(URI.open("http://acnhapi.com/v1/villagers").read)

# puts villagers

villagers.each do |villager|
gender = Gender.find_or_create_by(title: villager[0]["gender"])
#   v = Villager.new
# #  v.id = villager["id"]
#   v.name = villager["name"]["name-USen"]
#   v.saying = villager["saying"]
#   v.save
if gender && gender.valid?

  #create a movie
  create_villager= gender.villagers.create(
    id: villager["id"],
    name: villager["name"]["name-USen"],
    saying: villager["saying"]
  )
  # puts "INVALID movie #{m['original_title']}" unless villager&.valid?
  puts "#{v.name}"
end
end


