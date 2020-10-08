class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create 
    user = User.create(user_params)
    render json: user
  end

  private 

  def user_params 
    params.require(:user).permit(:username, :password_digest,
    boards_attributes: [:id, :title, :user_id, :_destroy, images_attributes: %i[id title uploaded_img]])
  end
end