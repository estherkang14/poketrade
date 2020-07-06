class CreatePokemonCards < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_cards do |t|
      t.string :title
      t.string :image_url
      t.string :type

      t.timestamps
    end
  end
end
