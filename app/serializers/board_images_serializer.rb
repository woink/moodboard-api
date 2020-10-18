class BoardImagesSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :image_id, :x, :y, :width, :height
end
