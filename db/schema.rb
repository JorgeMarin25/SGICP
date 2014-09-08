# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140904195103) do

  create_table "cargos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "empresa"
    t.string   "nit"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cotizacions", force: true do |t|
    t.string   "cliente_id"
    t.string   "producto"
    t.text     "descripcion"
    t.string   "cantidad"
    t.integer  "precio"
    t.integer  "iva"
    t.integer  "subtotal"
    t.integer  "total"
    t.boolean  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "nombre"
    t.string   "doc"
    t.integer  "estado_id"
    t.string   "direccion"
    t.string   "barrio"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "celular"
    t.string   "correo"
    t.boolean  "genero"
    t.date     "fchinicio"
    t.date     "fchfinal"
    t.string   "cargo_id"
    t.string   "ref"
    t.string   "telref"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "laborando"
  end

  create_table "estados", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudios", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fecha"
    t.string   "lugar"
    t.integer  "empleado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudios", ["empleado_id"], name: "index_estudios_on_empleado_id"

  create_table "experiencia", force: true do |t|
    t.string   "lugar"
    t.string   "cargo"
    t.string   "jefe"
    t.string   "tel"
    t.date     "fchini"
    t.date     "fchfin"
    t.string   "motivo"
    t.integer  "empleado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiencia", ["empleado_id"], name: "index_experiencia_on_empleado_id"

  create_table "facturacions", force: true do |t|
    t.date     "fecha"
    t.date     "fchven"
    t.integer  "cotizacion_id"
    t.integer  "cliente_id"
    t.string   "telefono"
    t.string   "empresa"
    t.string   "nit"
    t.string   "producto"
    t.text     "descripcion"
    t.string   "cantidad"
    t.integer  "precio"
    t.integer  "iva"
    t.integer  "subtotal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventarios", force: true do |t|
    t.string   "productos"
    t.string   "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "valor"
  end

  create_table "nominas", force: true do |t|
    t.integer  "salariobasico"
    t.integer  "horasextras"
    t.integer  "recargosdiurnos"
    t.integer  "recargosnocturnos"
    t.integer  "dominicales"
    t.integer  "festivos"
    t.integer  "comisiones"
    t.integer  "diasnotrabajados"
    t.integer  "horasnotrabajadas"
    t.integer  "empleado_id"
    t.boolean  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "nominas", ["empleado_id"], name: "index_nominas_on_empleado_id"

  create_table "novedades", force: true do |t|
    t.date     "fechavacaciones"
    t.date     "finvacaciones"
    t.integer  "cesantias"
    t.integer  "primalegal"
    t.integer  "primavacaciones"
    t.integer  "sueldobasico"
    t.integer  "horasextras"
    t.integer  "recargosdiurnos"
    t.integer  "dominicales"
    t.integer  "festivos"
    t.integer  "comiciones"
    t.integer  "diasnotrabajados"
    t.integer  "horasnotrabajadas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
