class Api::V1::ImagesController < ApplicationController
  before_action :get_board

  def index
    images = @board.images
    render json: images
  end

  def show 
    image = Image.find(params[:id])
    render json: image
  end
  
  def create
    image = @board.Image.build(image_params)
    image.save
    if params[:img_src] != ''
      image.img_src.attach(params[:img_src])
      image.save
      image.img_url = url_for(image.img_src)
      image.save
    end
  end

  private
  def get_board
    @board = Board.find(params[:board_id])
  end
  def image_params
    params.require(:image).permit(:title)
  end
end
