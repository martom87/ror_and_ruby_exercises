class CreateSamurais < ActiveRecord::Migration[5.2]
  def change
    create_table :samurais do |t|
      t.string :name, default: '', null: false
      t.integer :battles_number, default: 0, null: false
      t.integer :armor, default: 0, null: false
      t.date :enrolled, null: false
      t.date :died, default: nil
      t.belongs_to :clan, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end

