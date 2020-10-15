class User < ApplicationRecord
  has_many :boards
  has_many :board_images, through: :boards
  has_many :images, through: :board_images
  # accepts_nested_attributes_for :boards, allow_destroy: true
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
