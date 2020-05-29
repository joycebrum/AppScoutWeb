class AddUserToGame < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :games, foreign_key: true
  end
end