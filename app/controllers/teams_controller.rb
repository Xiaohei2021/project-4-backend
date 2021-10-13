class TeamsController < ApplicationController
    def index
        teams = Team.all
        render json: teams
    end

    def create
        team = Team.new(team_params) 
        # byebug
        if team.save
            render json: team
        else 
            render json: {error: "Team Creation failed, please try again"}
        end   
    end

    private
    def tam_params
        params.require(:team).permit(:name, :leader, :description)
    end
end
