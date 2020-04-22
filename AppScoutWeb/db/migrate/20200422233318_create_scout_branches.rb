class CreateScoutBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :scout_branches do |t|
      t.string :description
    end
  end
end
