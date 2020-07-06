class Type < ApplicationRecord
    has_many :pokemon_card_types
    has_many :pokemon_cards, through: :pokemon_card_types
end
