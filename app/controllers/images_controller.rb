class ImagesController < ApplicationController
  skip_before_action :authorized

  def index
    images = Images.all
    render json: images
  end

  def show 
    image = Image.find(params[:id])
    render json: image
  end
  
  def create
    image = Image.create()
      image.img_src.attach(params[:img_src])
      image.img_url = url_for(image.img_src)
      image.save
      render json: image
    end
  end

  private
  def get_board
    @board = Board.find(params[:board_id])
  end
  # def image_params
  #   params.require(:image).permit(:title)
  # end
# end
