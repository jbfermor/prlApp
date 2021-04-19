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

ActiveRecord::Schema.define(version: 2021_04_19_180155) do

  create_table "centros", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "poblacion"
    t.string "provincia"
    t.integer "cp"
    t.string "actividad"
    t.integer "n_trabajadores"
    t.string "localizacion"
    t.integer "superficie"
    t.integer "plantas_ocupadas"
    t.integer "aforo_max"
    t.string "entorno"
    t.string "act_derecha"
    t.string "act_izquierda"
    t.string "act_frontal"
    t.string "act_trasera"
    t.string "act_superior"
    t.string "act_inferior"
    t.string "acceso_empleados"
    t.string "accesso_clientes"
    t.integer "inst_baja_tension"
    t.string "ubicacion_cuadro_general"
    t.integer "es_ct"
    t.integer "ub_interior_ct"
    t.integer "ub_caseta_ext_ct"
    t.integer "potencia_ct"
    t.string "e_mant_ct"
    t.integer "es_aacc"
    t.string "sit_aacc"
    t.integer "es_ventilacion"
    t.string "sit_ventilacion"
    t.integer "es_ascensor"
    t.integer "n_ascensores"
    t.integer "es_frio"
    t.integer "n_cam_congelados"
    t.integer "n_cam_frio"
    t.string "ub_compresores"
    t.string "otras_inst"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "empresa_id", null: false
    t.index ["empresa_id"], name: "index_centros_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "razon_social"
    t.string "cif"
    t.string "direccion"
    t.string "poblacion"
    t.string "provincia"
    t.integer "cp"
    t.integer "telefono"
    t.string "email"
    t.integer "t_fuera"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politica_preventivas", force: :cascade do |t|
    t.integer "pp1"
    t.integer "pp2"
    t.integer "pp3"
    t.integer "pp4"
    t.integer "pp5"
    t.integer "pp6"
    t.integer "pp7"
    t.integer "pp8"
    t.integer "pp9"
    t.integer "pp10"
    t.integer "pp11"
    t.string "pp12"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "empresa_id", null: false
    t.index ["empresa_id"], name: "index_politica_preventivas_on_empresa_id"
  end

  create_table "responsables", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "nif"
    t.string "cargo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "empresa_id", null: false
    t.index ["empresa_id"], name: "index_responsables_on_empresa_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trabajadors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "puesto"
    t.integer "embarazo"
    t.integer "lactante"
    t.integer "sensible"
    t.integer "discapacidad"
    t.integer "menor"
    t.integer "fecha_alta"
    t.integer "fecha_baja"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "centro_id", null: false
    t.integer "activo"
    t.index ["centro_id"], name: "index_trabajadors_on_centro_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "centros", "empresas"
  add_foreign_key "politica_preventivas", "empresas"
  add_foreign_key "responsables", "empresas"
  add_foreign_key "trabajadors", "centros"
  add_foreign_key "users", "roles"
end
