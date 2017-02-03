class CreateChampionRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :champion_roles do |t|
      t.integer :champion_id
      t.integer :role_id
      t.timestamps
    end
  end
end
