class CreateVideojuegos < ActiveRecord::Migration[7.0]
  def change
    create_table :videojuegos do |t|
      t.string :name
      t.string :descripcion
      t.string :genre
      t.string :developer
      t.string :price
      t.string :cover

      t.timestamps
    end
  end
end
