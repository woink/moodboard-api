class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :images

  def images
    ActiveModelSerializers::SerializableResource.new(object.images, each_serializer: ImageSerializer)
  end
end
