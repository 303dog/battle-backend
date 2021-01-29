class Api::V1::HerosController < ApplicationController

    # GET /heros
 def index
   @heros = Hero.all

   render json: @heros
 end

 # GET /heros/1
 def show
   @hero = Hero.find_by_id(params[:id])
   render json: @hero
 end

end
