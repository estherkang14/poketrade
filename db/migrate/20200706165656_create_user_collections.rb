class CreateUserCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :user_collections do |t|
      t.integer :user_id
      t.integer :pokemon_card_id
      t.string :description

      t.timestamps
    end
  end
end
