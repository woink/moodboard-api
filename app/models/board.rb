class Board < ApplicationRecord
  belongs_to :user
  has_many :board_images
  has_many :images, through: :board_images
  accepts_nested_attributes_for :images, allow_destroy: true
end
