class AddTitleAndArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :title, :string
    add_column :songs, :artist, :string
  end
end
