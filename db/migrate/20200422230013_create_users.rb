class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :password
      t.string :registration_number

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :registration_number, unique: true
  end
end
