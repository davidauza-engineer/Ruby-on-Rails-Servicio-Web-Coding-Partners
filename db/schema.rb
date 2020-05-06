# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_22_015015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amistades", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "amigo_id", null: false
    t.boolean "confirmada"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["amigo_id"], name: "index_amistades_on_amigo_id"
    t.index ["usuario_id"], name: "index_amistades_on_usuario_id"
  end

  create_table "tecnologias", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "correo_electronico"
    t.string "contrasena"
    t.string "telefono"
    t.string "github"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios_tecnologias", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "tecnologia_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tecnologia_id"], name: "index_usuarios_tecnologias_on_tecnologia_id"
    t.index ["usuario_id"], name: "index_usuarios_tecnologias_on_usuario_id"
  end

  add_foreign_key "amistades", "usuarios"
  add_foreign_key "amistades", "usuarios", column: "amigo_id"
  add_foreign_key "usuarios_tecnologias", "tecnologias"
  add_foreign_key "usuarios_tecnologias", "usuarios"
end
