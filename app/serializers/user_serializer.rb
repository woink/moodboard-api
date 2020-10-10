class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :boards
  has_many :boards
  has_many :board_images
  has_many :images, through: :board_images
  # def boards
  #   ActiveModelSerializers::SerializableResource.new(object.boards, each_serializer: BoardSerializer)
  # end

end
