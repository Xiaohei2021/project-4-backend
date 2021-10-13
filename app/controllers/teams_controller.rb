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
    
    def update
        team = Team.find_by_id(params[:id])
        if team.update(team_params)
            render json: team
        else
            render json: {error: "Team info incorrect, Please check your entered data"}
        end
    end

    private
    def tam_params
        params.require(:team).permit(:name, :leader, :description)
    end
end
