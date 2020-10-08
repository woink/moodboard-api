class User < ApplicationRecord
  has_many :boards
  accepts_nested_attributes_for :boards, allow_destroy: true
end
