class AddWarriorNameUniqueness < ActiveRecord::Migration[5.2]
  def change
    add_index :warriors, :name, unique: true, where: 'died IS NULL'
  end
end
