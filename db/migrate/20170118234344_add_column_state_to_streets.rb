class AddColumnStateToStreets < ActiveRecord::Migration[5.0]
  def change
    add_column :streets, :state, :string, default: "in_draft"
  end
end
