# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_14_215004) do
  create_table "compras", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "videojuego_id", null: false
    t.float "sell_price"
    t.integer "card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["videojuego_id"], name: "index_compras_on_videojuego_id"
  end

  create_table "reservas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "videojuego_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["videojuego_id"], name: "index_reservas_on_videojuego_id"
  end

  create_table "videojuegos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "descripcion"
    t.string "genre"
    t.string "developer"
    t.string "price"
    t.string "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compras", "videojuegos"
  add_foreign_key "reservas", "videojuegos"
end
