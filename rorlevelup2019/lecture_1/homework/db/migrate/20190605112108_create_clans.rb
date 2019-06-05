class CreateClans < ActiveRecord::Migration[5.2]
  def change
    create_table :clans do |t|
      t.string :name, default: '',null: false
      t.timestamps
    end
  end
end
