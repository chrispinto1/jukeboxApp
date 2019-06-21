class AddPlaylistIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :playlist_id, :integer
    add_column :songs, :playlist_id, :integer
  end
end
