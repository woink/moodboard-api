class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :images
  has_many :board_images
  has_many :images, through: :board_images

  # def images
  #   ActiveModelSerializers::SerializableResource.new(object.images, each_serializer: ImageSerializer)
  # end
end
