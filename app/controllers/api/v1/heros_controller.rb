class Api::V1::HerosController < ApplicationController
  
   def index
     @heros = Hero.all
     render json: @heros
   end

   def new
      @hero = Hero.new(hero_params)
   end

   def show 
      set_hero
      render json: @hero
   end

   def update
      set_hero
      update_params
      render json: @hero
   end

   def create
      @hero = Hero.create(hero_params)
   end
  
   def show
     set_hero
     render json: @hero
   end

   
   private

   def hero_params
      params.require(:id, :smImg, :mdImg, :name).permit(:alignment, :muscle, :smarts, :combat_skills, :aka,   :speed, :power, :wins, :losses)
   end

   def update_params
      @hero.increment(:wins).save
   end

   def set_hero
      @hero = Hero.find_by_id(params[:id])
   end

end
