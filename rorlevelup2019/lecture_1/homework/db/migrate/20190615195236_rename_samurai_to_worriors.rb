class RenameSamuraiToWorriors < ActiveRecord::Migration[5.2]
  def change
    rename_table :samurais, :warriors
    add_column :warriors, :type, :string, null: false, default: 'Warriors::Samurai'
  end
end
