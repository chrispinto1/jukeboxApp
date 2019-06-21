class User < ApplicationRecord
  belongs_to :playlist, required: false
  has_many :songs, through: :playlists
  validates :name, uniqueness: true
  has_secure_password
  # validates :name, uniqueness :true
  # validates :password, presence :true
end
