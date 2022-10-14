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

villagers = JSON.parse(URI.open("http://acnhapi.com/v1a/villagers").read)

# puts villagers["wol12"]["id"]
i = 0;
villagers.each do |villager|
  if i < 100
    gender = Gender.find_or_create_by(title: villager["gender"])
      create_villager= gender.villagers.create(
        id: villager["id"],
        title: villager["name"]["name-USen"],
        body: villager["saying"]
      )
      i+=1
  end
end


