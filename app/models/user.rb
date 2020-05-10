class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_many :rooms
  has_many :messages
  has_many :user_rooms

  has_many :rooms, through: :user_rooms
end
