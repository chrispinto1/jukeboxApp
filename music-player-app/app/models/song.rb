class Song < ApplicationRecord
  has_many :playlists
  has_many :users, through: :playlists


  def addToPlaylist(user_id,song)
    user = User.find(user_id)
    user.playlist.songs += [song]
    user.save
  end
end
