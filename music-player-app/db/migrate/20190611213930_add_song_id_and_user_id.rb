class AddSongIdAndUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :user_id, :integer
    add_column :users, :song_id, :integer
  end
end
