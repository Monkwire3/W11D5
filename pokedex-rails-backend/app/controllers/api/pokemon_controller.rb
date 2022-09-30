class Api::PokemonController < ApplicationController
    def index
      @pokemon = Pokemon.all
      render :index #Images not found
    end

    def types
        render json:  [
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
    end

    def show
        
    end


end
