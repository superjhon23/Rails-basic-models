class RenameColumnToGames < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :test, :test_rename
  end
end
