class AddTestToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :test, :string
  end
end
