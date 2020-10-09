class Api::V1::ImagesController < ApplicationController
  
  def create
    # byebug
    image = Image.new(image_params)
    if params[:img_src] != ''
      image.img_src.attach(params[:img_src])
      image.img_url = url_for(image.img_src)
      image.save
    end
  end

  private

  def image_params
    params.require(:image).permit(:title)
  end
end
