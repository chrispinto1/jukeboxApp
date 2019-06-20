class CreateColumnName < ActiveRecord::Migration[5.2]
  def change
    create_table :column_names do |t|
      rename_column :users, :password, :password_digest
    end
  end
end
