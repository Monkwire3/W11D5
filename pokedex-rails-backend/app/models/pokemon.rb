# == Schema Information
#
# Table name: pokemons
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  name       :string           not null
#  attack     :integer          not null
#  defense    :integer          not null
#  poke_type  :string           not null
#  image_url  :string           not null
#  captured   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pokemon < ApplicationRecord
    validates :image_url, presence: true
    validates :captured, inclusion: [true, false]
    validates :name, length: { in: 3..255 }, uniqueness: { message: "The name %{value} is taken" }
    validates :number, uniqueness: { message: "The number %{value} is taken"}, numericality: { greater_than: 0 }
    validates :attack, :defense, numericality: { only_integer: true, in:  0..100 }
    TYPES = [
      'fire',
      'electric',
      'normal',
      'ghost',
      'psychic',
      'water',
      'bug',
      'dragon',
      'grass',
      'fighting',
      'ice',
      'flying',
      'poison',
      'ground',
      'rock',
      'steel'
      ]

    validates :poke_type, inclusion: { in: TYPES, message: "'%{value}' is not a valid Pokemon type" }

    has_many :items,
      foreign_key: :pokemon_id,
      class_name: :Item

    has_many :poke_moves,
      foreign_key: :pokemon_id,
      class_name: :PokeMove

    has_many :moves,
      through: :poke_moves,
      source: :move 
    
end
