# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "httparty"
response = HTTParty.get("https://akabab.github.io/superhero-api/api/all.json")
print response[0]
response.each do |hero|

    Hero.create(wins: 2, losses: 2, hero_id: hero["id"], name: hero["biography"]["fullName"], aka: hero["biography"]["aliases"], alignment: hero["biography"]["alignment"], smarts: hero["powerstats"]["intelligence"], muscle: hero["powerstats"]["strength"], speed: hero["powerstats"]["speed"], stamina: hero["powerstats"]["durability"], power: hero["powerstats"]["power"], combat_skills: hero["powerstats"]["combat"], xsImg: hero["images"]["xs"], smImg: hero["images"]["sm"], mdImg: hero["images"]["md"], lgImg: hero["images"]["lg"])
end

