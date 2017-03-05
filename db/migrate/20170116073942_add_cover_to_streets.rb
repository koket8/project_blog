class AddCoverToStreets < ActiveRecord::Migration[5.0]
  def change
  
   add_attachment :streets,:cover

  end
end
