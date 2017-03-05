class AddColumnsToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :username, :string
  end
end
