class Api::V1::HerosController < ApplicationController
  
    # GET /heros
 def index
   @heros = Hero.all
   render json: @heros
 end

 def new
    @hero = Hero.new(hero_params)
 end

 def create
    @hero = Hero.create(hero_params)
 end
 # GET /heros/1
 def show
   @hero = Hero.find_by_id(params[:id])
   render json: @hero
 end


 private

 def hero_params
  params.require(:id, :smImg, :mdImg, :name).permit(:alignment, :muscle, :smarts, :combat_skills, :aka, :speed, :power)
 end


end
