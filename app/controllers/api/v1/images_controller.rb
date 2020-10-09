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

secret_key_base: 342a276ca171aae28ef198de6c713cc1e4329f62de7b280f49e12a2d241d43fdccae858c4cd04894c9f8b23a9e93fecf209837b60f3509611b8be158c3ad12fd