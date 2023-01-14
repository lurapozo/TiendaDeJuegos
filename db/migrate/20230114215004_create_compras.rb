class CreateCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :compras do |t|
      t.references :videojuego, null: false, foreign_key: true
      t.float :sell_price
      t.integer :card

      t.timestamps
    end
  end
end
