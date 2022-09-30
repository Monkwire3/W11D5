# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint
#  move_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
    validates :pokemon_id, :move_id, presence: true
    validates :move_id, uniqueness: {scope: :pokemon_id, 
        message: "pokemon cannot have the same move more than once"}

    belongs_to :pokemon,
        foreign_key: :pokemon_id,
        class_name: :Pokemon,
        dependent: :destroy

    belongs_to :move,
        foreign_key: :move_id,
        class_name: :Move,
        dependent: :destroy

    
end
