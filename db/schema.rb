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

ActiveRecord::Schema.define(version: 20140902193212) do

  create_table "clients", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "email"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_services", force: true do |t|
    t.integer  "client_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_services_services", force: true do |t|
    t.integer  "service_id"
    t.integer  "order_service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "descricao"
    t.string   "modelo"
    t.float    "p_compra"
    t.float    "p_venda"
    t.integer  "quantidade"
    t.float    "lucro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts_services", force: true do |t|
    t.integer  "service_id"
    t.integer  "part_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "descricao"
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
