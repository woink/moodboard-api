class User < ApplicationRecord
  has_many :boards
  accepts_nested_attributes_for :boards, allow_destroy: true
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
