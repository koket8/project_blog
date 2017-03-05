class CreateStreets < ActiveRecord::Migration[5.0]
  def change
    create_table :streets do |t|
      t.string :title
      t.text :body
      t.integer :views

      t.timestamps
    end
  end
end
