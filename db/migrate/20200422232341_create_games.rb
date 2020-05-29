class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.integer :duration_min
      t.integer :duration_max
      t.string :material_list
      t.integer :quant_min
      t.integer :quant_max

      t.timestamps
    end
  end
end
