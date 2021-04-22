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

ActiveRecord::Schema.define(version: 2021_04_22_173706) do

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

  create_table "medidas", force: :cascade do |t|
    t.integer "m1"
    t.integer "m2"
    t.string "m3"
    t.integer "m4"
    t.integer "m5"
    t.integer "m6"
    t.integer "m7"
    t.integer "m8"
    t.integer "m9"
    t.integer "m10"
    t.integer "m11"
    t.integer "m12"
    t.string "m13"
    t.integer "m14"
    t.integer "m15"
    t.integer "m16"
    t.integer "m17"
    t.integer "m18"
    t.integer "m19"
    t.integer "m20"
    t.string "m21"
    t.string "m22"
    t.string "m23"
    t.string "m24"
    t.integer "m25"
    t.integer "m26"
    t.integer "m27"
    t.integer "m28"
    t.integer "m29"
    t.integer "m30"
    t.integer "m31"
    t.integer "m32"
    t.integer "m33"
    t.integer "m34"
    t.integer "m35"
    t.integer "m36"
    t.integer "m37"
    t.integer "m38"
    t.integer "m39"
    t.integer "m40"
    t.integer "m41"
    t.integer "m42"
    t.integer "m43"
    t.integer "m44"
    t.integer "m45"
    t.integer "m46"
    t.integer "centro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["centro_id"], name: "index_medidas_on_centro_id"
  end

  create_table "organizacion_empresarials", force: :cascade do |t|
    t.integer "d"
    t.integer "mi"
    t.integer "t"
    t.integer "dp"
    t.integer "empresa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_organizacion_empresarials_on_empresa_id"
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

  create_table "practicas", force: :cascade do |t|
    t.integer "p1"
    t.integer "p2"
    t.integer "p3"
    t.integer "p4"
    t.integer "p5"
    t.integer "p6"
    t.integer "p7"
    t.integer "p8"
    t.integer "p9"
    t.integer "p10"
    t.integer "p11"
    t.integer "p12"
    t.integer "p13"
    t.integer "p14"
    t.integer "p15"
    t.integer "p16"
    t.integer "p17"
    t.integer "p18"
    t.integer "p19"
    t.integer "p20"
    t.string "p21"
    t.integer "p22"
    t.integer "p23"
    t.integer "p24"
    t.integer "p25"
    t.integer "p26"
    t.integer "p27"
    t.integer "p28"
    t.integer "p29"
    t.integer "p30"
    t.integer "p31"
    t.integer "p32"
    t.integer "p33"
    t.integer "p34"
    t.integer "p35"
    t.integer "p36"
    t.integer "p37"
    t.integer "p38"
    t.integer "p39"
    t.integer "p40"
    t.integer "p41"
    t.string "p42"
    t.integer "p43"
    t.integer "p44"
    t.integer "empresa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_practicas_on_empresa_id"
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
  add_foreign_key "medidas", "centros"
  add_foreign_key "organizacion_empresarials", "empresas"
  add_foreign_key "politica_preventivas", "empresas"
  add_foreign_key "practicas", "empresas"
  add_foreign_key "responsables", "empresas"
  add_foreign_key "trabajadors", "centros"
  add_foreign_key "users", "roles"
end
