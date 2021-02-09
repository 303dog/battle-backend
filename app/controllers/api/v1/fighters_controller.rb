class Api::V1::FightersController < ApplicationController


    def index 
        @fighters = Fighter.all
        render json: @fighters
    end
    
    def show
        @fighter = Fighter.find_by_id(params[:id])
        render json: @fighter
    end

    def new
        @fighter = Fighter.new(fig_params)
    end

    def create
        @fighter = Fighter.new(fig_params)
        byebug;
        if @fighter.save
            render json: @fighter, status: :created, location: @fighter
        else
            render json: @fighter.errors, status: :unprocessable_entity
        end
    end

    def update
        set_fighter
        @fighter.update(fig_params)
            render json: @fighter
    end



    private

    def fig_params
        params.require(:hero_id).permit(:wins, :losses)
    end

    def set_fighter
        @fighter = Fighter.find_by_id(params[:id])
    end
end
