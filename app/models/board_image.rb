class BoardImage < ApplicationRecord
  belongs_to :image
  belongs_to :board
  belongs_to :user
end
