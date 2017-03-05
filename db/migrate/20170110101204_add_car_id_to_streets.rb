
class AddCarIdToStreets < ActiveRecord::Migration[5.0]
  def change
    add_reference :streets, :car, foreign_key: true
  end
end