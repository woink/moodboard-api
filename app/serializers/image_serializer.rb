class ImageSerializer < ActiveModel::Serializer
  attributes :id, :title, :x_cord, :y_cord, :img_url
  
  def img_url
    if object.img_src.attachment != nil
      object.img_src.blob
    end
  end
end
