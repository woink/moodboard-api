class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :boards

  def boards
    ActiveModel::SerializableResource.new(object.boards, each_serializer: BoardSerializer)
  end

end
