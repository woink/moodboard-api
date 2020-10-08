class Api::V1::BoardsController < ApplicationController

  def create 
    user = User.create(user_params)
    render json: users
  end

  private 

  def user_params 
    params.require(:user).permit(:title)
  end
end