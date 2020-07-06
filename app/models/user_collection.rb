class UserCollection < ApplicationRecord
    belongs_to :user 
    belongs_to :pokemon_card 
end
