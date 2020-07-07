class PokemonCard < ApplicationRecord
    has_many :user_collections
    has_many :users, through: :user_collections
    has_many :pokemon_card_types
    has_many :types, through: :pokemon_card_types

    def pokemon_card_count
        self.users.count
    end

    def self.type?(pok_type)
        PokemonCard.where(types:pok_type)
    end
end
