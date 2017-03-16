# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170316165700) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "documento"
    t.string   "tipo_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "pais"
    t.string   "ciudad"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "detail_purchase_receipts", force: :cascade do |t|
    t.integer  "cantidad"
    t.decimal  "valor_total"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "purchase_receipts_id"
  end

  create_table "details", force: :cascade do |t|
    t.integer  "cantidad_producto"
    t.decimal  "precio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "receipt_id"
    t.integer  "product_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer  "descuento_porcentaje"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "society_id"
    t.integer  "category_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.date     "fecha_afiliacion"
    t.string   "periodicidad"
    t.date     "fecha_vencimiento"
    t.date     "fecha_cuota"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "society_id"
  end

  create_table "outflows", force: :cascade do |t|
    t.date     "fecha"
    t.string   "concepto"
    t.integer  "nit"
    t.string   "entidad"
    t.integer  "numero_factura"
    t.decimal  "valor"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_ways", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.decimal  "valor_unitario"
    t.decimal  "valor_total_curso"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "category_id"
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "nit"
    t.string   "nombre"
    t.string   "departamento"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "direccion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "purchase_receipts", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "numero_factura"
    t.decimal  "valor_total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "provider_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.date     "fecha"
    t.float    "valor_total"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "society_id"
    t.integer  "client_id"
    t.integer  "payment_method_id"
  end

  create_table "societies", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "val_anual"
    t.float    "val_semestral"
    t.float    "val_mensual"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
