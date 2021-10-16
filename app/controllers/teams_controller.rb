class TeamsController < ApplicationController
    def index
        teams = Team.all
        render json: teams
    end

    def create
        team = Team.new(team_params) 
        # team.pokemons = Pokemon.last
        # byebug
        if team.save
            render json: team
        else 
            render json: {error: "Team Creation failed, please try again"}
        end   
    end
    
    def update
        team = Team.find_by_id(params[:id])
        if team.update(team_params)
            render json: team
        else
            render json: {error: "Team info incorrect, Please check your entered data"}
        end
    end

    def destroy
        team = Team.find_by_id(params[:id])
        team.destroy
        render json: {message: "Your selected team has been disbanded"}

    end

    private

    def team_params
        params.require(:team).permit(:name, :leader, :description)
    end
end
