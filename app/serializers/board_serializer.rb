class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :images

  def images
    ActiveModel::SerializableResource.new(object.images, each_serializer: ImageSerializer)
  end
end
