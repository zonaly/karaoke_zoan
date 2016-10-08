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

ActiveRecord::Schema.define(version: 20161007235203) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "song_id"
    t.integer  "cntProd"
    t.decimal  "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "detail_orders", ["order_id"], name: "index_detail_orders_on_order_id"
  add_index "detail_orders", ["product_id"], name: "index_detail_orders_on_product_id"
  add_index "detail_orders", ["song_id"], name: "index_detail_orders_on_song_id"

  create_table "detail_vouchers", force: :cascade do |t|
    t.integer  "voucher_id"
    t.integer  "detail_order_id"
    t.integer  "cantProd"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "detail_vouchers", ["detail_order_id"], name: "index_detail_vouchers_on_detail_order_id"
  add_index "detail_vouchers", ["voucher_id"], name: "index_detail_vouchers_on_voucher_id"

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.text     "nomE"
    t.text     "apEm"
    t.integer  "numDni"
    t.text     "direc"
    t.text     "numtef"
    t.date     "fenac"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["local_id"], name: "index_employees_on_local_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "local_id"
    t.integer  "district_id"
    t.text     "availability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "events", ["district_id"], name: "index_events_on_district_id"
  add_index "events", ["local_id"], name: "index_events_on_local_id"

  create_table "incidents", force: :cascade do |t|
    t.string   "target"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locals", ["district_id"], name: "index_locals_on_district_id"

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.integer  "local_id"
    t.integer  "room_id"
    t.integer  "user_id"
    t.date     "fechPedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["local_id"], name: "index_orders_on_local_id"
  add_index "orders", ["room_id"], name: "index_orders_on_room_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "stock"
    t.decimal  "price"
    t.integer  "local_id"
    t.text     "availabilityP"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "products", ["local_id"], name: "index_products_on_local_id"

  create_table "reservations", force: :cascade do |t|
    t.date     "feRerser"
    t.integer  "local_id"
    t.integer  "event_id"
    t.integer  "room_id"
    t.text     "state"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["event_id"], name: "index_reservations_on_event_id"
  add_index "reservations", ["local_id"], name: "index_reservations_on_local_id"
  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "local_id"
    t.integer  "aforoS"
    t.text     "availabilityS"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "rooms", ["local_id"], name: "index_rooms_on_local_id"

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

  create_table "users", force: :cascade do |t|
    t.text     "nomUser"
    t.text     "apUser"
    t.date     "feReg"
    t.date     "feNac"
    t.text     "email"
    t.text     "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "user_id"
    t.integer  "local_id"
    t.date     "feemision"
    t.integer  "employee_id"
    t.decimal  "subtotal"
    t.decimal  "igv"
    t.decimal  "mtoTotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vouchers", ["employee_id"], name: "index_vouchers_on_employee_id"
  add_index "vouchers", ["local_id"], name: "index_vouchers_on_local_id"
  add_index "vouchers", ["room_id"], name: "index_vouchers_on_room_id"
  add_index "vouchers", ["user_id"], name: "index_vouchers_on_user_id"

end
