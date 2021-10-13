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

    def update
        pokemon = Pokemon.find_by_id(params[:id])
        if pokemon.update(pokemon_params)
            render json: pokemon
        else
            render json: {error: "Invalid Pokemon data, Please check your entered data"}
        end
    end

    def destroy
        pokemon = Pokemon.find_by_id(params[:id])
        pokemon.destroy
        render json: {message: "This member is send of to paradise island for vacation"}

    end


    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemon_type, :moves, :abilities, :national_pokedex_num, :team_id)
    end
end
