class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    
    def new
       @user = User.new(user_params)
    end
    
    def create
       @user = User.new(user_params)
    end

    def show
      @user = User.find_by_id(params[:id])
      render json: @user
    end

    
    
    
    private
    
    def set_user
       @user = User.find(params[:id])
    end    

    def user_params
      params.require(:user).permit(:username, :password)
    end
end
