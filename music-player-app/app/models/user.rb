class User < ApplicationRecord
  has_many :playlists
  has_many :songs, through: :playlists
  validates :name, uniqueness: true
  has_secure_password
  # validates :name, uniqueness :true
  # validates :password, presence :true
end
