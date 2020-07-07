class PokemonCardsController < ApplicationController
    before_action :authorized, except: [:index]
    def index
        # @pokemon_cards = PokemonCard.all
        if params[:type_ids] == 
            @pokemon_cards = PokemonCard.type?('Psychic')
        elsif params[:type_ids] == 'Grass'
            @pokemon_cards = PokemonCard.type?('Grass')
        else
            @pokemon_cards = PokemonCard.all
        end
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
