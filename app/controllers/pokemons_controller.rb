class PokemonsController < ApplicationController
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end

    def create
        pokemon = Pokemon.new(pokemon_params) 
        # byebug
        if pokemon.save
            render json: pokemon
        else 
            render json: {error: "Enlistment failed, please try again"}
        end   
    end


    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemon_type, :moves, :abilities, :national_pokedex_num, :team_id)
    end
end
