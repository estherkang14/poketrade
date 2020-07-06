class DeleteColumnFromPokemonCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemon_cards, :pokemon_type, :string
  end
end
