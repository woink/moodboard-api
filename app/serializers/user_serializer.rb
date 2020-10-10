class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :boards

  def boards
    ActiveModelSerializers::SerializableResource.new(object.boards, each_serializer: BoardSerializer)
  end

end
