class AddBioToStreet < ActiveRecord::Migration[5.0]
  def change
    add_column :streets, :bio, :text
  end
end
