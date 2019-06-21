class Playlist < ApplicationRecord
  belongs_to :user, required: false
  has_many :songs
end
