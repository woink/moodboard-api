class ImagesController < ApplicationController
  # skip_before_action :authorized

  def index
    images = Image.all
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


  def destroy 
    image = Image.find(params[:id])
    image.destroy
  end
end
 
