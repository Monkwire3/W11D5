class Api::PokemonController < ApplicationController
    def index
        render json: [
            {
              "id": 1,
              "number": 1,
              "name": "Bulbasaur",
              "imageUrl": "/images/pokemon_snaps/1.svg",
              "captured": true
            },
          ]
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
