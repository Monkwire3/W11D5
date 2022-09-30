class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :pokemons, foreign_key: {to_table: :pokemons}
      t.references :move, foreign_key: {to_table: :moves}

      t.timestamps
    end
  end
end
