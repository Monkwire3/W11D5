# == Schema Information
#
# Table name: poke_moves
#
#  id          :bigint           not null, primary key
#  pokemons_id :bigint
#  move_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class PokeMove < ApplicationRecord
end
