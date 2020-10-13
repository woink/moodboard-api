class BoardImagesController < ApplicationController
  # skip_before_action :authorized, only: [:create, :index]

  def index 
    board_images = BoardImage.all
    render json: board_images
  end

  def create
    # byebug
    board_image = BoardImage.create(board_image_params)
    # byebug
    render json: board_image
  end
  
  private

  def board_image_params
    params.require(:board_image).permit(:image_id, :board_id)
  end
end 
