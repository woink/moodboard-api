class Image < ApplicationRecord
  has_many :board_images
  has_many :boards, through: :board_images
  has_one_attached :img_src
end
