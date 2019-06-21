class User < ApplicationRecord
  belongs_to :playlist, required: false
  has_many :songs, through: :playlists
  validates :name, uniqueness: true
  validates :password, presence: true
  has_secure_password

  def addPlaylistToUser(user)
    playlist = Playlist.create(user_id: user.id)
    user.playlist_id = playlist.id
    user.save
  end

  def updateUser(user, params)
    if params["/settings"][:name] != ""
      user.update(name: params["/settings"][:name])
    end
    if params["/settings"][:email] != ""
      user.update(email: params["/settings"][:email])
    end
    if params["/settings"][:password] != ""
      user.update(password: params["/settings"][:password])
    end
    user.save
  end
end
