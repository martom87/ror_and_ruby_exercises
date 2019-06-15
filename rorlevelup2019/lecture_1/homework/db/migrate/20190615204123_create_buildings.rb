class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :type, null: false
      t.timestamps
    end
    add_reference :warriors, :buildings, foreign_key: true
  end
end
