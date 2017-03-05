class CreateAnuncios < ActiveRecord::Migration[5.0]
  def change
    create_table :anuncios do |t|
      t.references :car, foreign_key: true
      t.references :street, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end





