class AddPermissionLevelToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :permission_level, :integer, default: 1
  end
end
