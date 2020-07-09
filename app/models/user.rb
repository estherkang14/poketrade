class User < ApplicationRecord
    has_many :user_collections
    has_many :pokemon_cards, through: :user_collections
    has_many :posts
    validates :name, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 4 } 
    has_secure_password
end
 