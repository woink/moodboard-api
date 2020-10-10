class BoardImagesController < ApplicationController

  def create
    board_image = BoardImage.create(board_image_params)
    render json: board_image
  end
  
  private

  def board_image_params
    params.require(:board_image).permit(:user_id, :board_id)
  end
end 
