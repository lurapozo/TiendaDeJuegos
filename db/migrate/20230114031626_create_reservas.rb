class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.references :videojuego, null: false, foreign_key: true

      t.timestamps
    end
  end
end
