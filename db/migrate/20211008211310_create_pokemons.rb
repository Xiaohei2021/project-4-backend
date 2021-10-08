class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.string :moves
      t.string :abilities
      t.string :national_pokedex_num
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
