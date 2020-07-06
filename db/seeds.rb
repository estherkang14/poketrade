# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
require 'pry'

#User.destroy_all 
PokemonCard.destroy_all 
Type.destroy_all
User.destroy_all

def get_api_info
    info_string = RestClient.get('https://api.pokemontcg.io/v1/cards?setCode=base1')
    info_hash = JSON.parse(info_string)
    all_cards_info = info_hash["cards"]
end 


get_api_info.each do |card|
    if card["supertype"] == "Pokémon"
        PokemonCard.create(title: card["name"], image_url: card["imageUrl"])
        Type.find_or_create_by(name: card["types"][0])
    end 
end

user1 = User.create(name: "Esther", location: "Maryland")
user2 = User.create(name: "Diego", location: "Virginia")
user3 = User.create(name: "Maddie", location: "Georgia")
user4 = User.create(name: "Paul", location: "Washington D.C.")
