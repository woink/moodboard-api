class Api::V1::ImagesController < ApplicationController
  
  def index
    images = Image.all
  end
  
  def create
    # byebug
    image = Image.new(image_params)
    if params[:img_src] != ''
      image.img_src.attach(params[:img_src])
      image.save
      image.img_url = url_for(image.img_src)
      image.save
    end
  end

  private

  def image_params
    params.require(:image).permit(:title)
  end
end
<<<<<<< HEAD

=======
>>>>>>> 8a70e4558361fcb98469edd4cad6a675c3ebf6a3
