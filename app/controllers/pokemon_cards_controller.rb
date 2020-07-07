class PokemonCardsController < ApplicationController
    def index
        @pokemon_cards = PokemonCard.all
    end

    def show
        @pokemon_card = PokemonCard.find(params[:id])
    end

    def edit
        @pokemon_card = PokemonCard.find(params[:id])
    end

    def update
        @pokemon_card = PokemonCard.find(params[:id])
        if @pokemon_card.update(card_params)
            redirect_to pokemon_card_path(@pokemon_card.id)
        else
            render :edit
        end 
    end 

    private

    def card_params
        params.require(:pokemon_card).permit(:title, :image_url, :type_ids)
    end 
end
