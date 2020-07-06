class ChangeColumnInPokemonCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :pokemon_cards, :type, :pokemon_type
  end
end
