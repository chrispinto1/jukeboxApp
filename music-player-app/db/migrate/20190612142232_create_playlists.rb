class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.integer :song_id
      t.integer :user_id
    end
  end
end
