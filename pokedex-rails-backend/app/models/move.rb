# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, length: {in: 3..255}

    has_many :poke_moves,
        foreign_key: :move_id,
        class_name: :PokeMove

    has_many :pokemon,
        through: :poke_move,
        source: :pokemon
end
