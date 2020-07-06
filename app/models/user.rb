class User < ApplicationRecord
    has_many :user_collections
    has_many :pokemon_cards, through: :user_collections

end
