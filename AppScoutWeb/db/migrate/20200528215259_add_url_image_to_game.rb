class AddUrlImageToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :url_image, :string
  end
end
