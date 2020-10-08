class Api::V1::ImagesController < ApplicationController

  def create
    image = Image.create(image_params)
    render json: image
  end

  private

  def image_params
    params.require(:image).permit(:title, :uploaded_img)
  end
end