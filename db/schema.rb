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

ActiveRecord::Schema.define(version: 0) do

  create_table "clientes", primary_key: "id_cliente", force: :cascade do |t|
    t.string  "nombre",    limit: 100
    t.string  "ap",        limit: 100
    t.string  "am",        limit: 100
    t.integer "edad",      limit: 4
    t.string  "sexo",      limit: 10
    t.string  "mail",      limit: 100
    t.integer "notif",     limit: 4
    t.integer "especial",  limit: 4
    t.integer "noCompras", limit: 4
  end

  create_table "discos", primary_key: "id_disco", force: :cascade do |t|
    t.integer "cantidad",     limit: 4
    t.string  "titulo",       limit: 100
    t.string  "genero",       limit: 100
    t.string  "artista",      limit: 100
    t.integer "anio",         limit: 4
    t.string  "album",        limit: 100
    t.integer "NumCanciones", limit: 4
    t.integer "descuento",    limit: 4
    t.float   "costo",        limit: 24
  end

  create_table "vendedores", primary_key: "id_vendedor", force: :cascade do |t|
    t.string  "usr",      limit: 100
    t.string  "pwd",      limit: 100
    t.string  "nombre",   limit: 100
    t.string  "ap",       limit: 100
    t.string  "am",       limit: 100
    t.integer "gerente",  limit: 4
    t.float   "ganancia", limit: 53
  end

end
