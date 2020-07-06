class PokemonCardsController < ApplicationController
    def index
        @pokemon_cards = PokemonCard.all
    end

    def show
        @pokemon_card = PokemonCard.find(params[:id])
    end
end
