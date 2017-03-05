class AddNameToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :name, :string
  end
end
