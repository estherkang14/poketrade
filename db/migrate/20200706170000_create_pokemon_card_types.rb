class CreatePokemonCardTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_card_types do |t|
      t.integer :pokemon_card_id
      t.integer :type_id

      t.timestamps
    end
  end
end
