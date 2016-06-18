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

ActiveRecord::Schema.define(version: 20160618103523) do

  create_table "data_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "dtype",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "machine_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "machines", force: :cascade do |t|
    t.integer  "machine_type_id", limit: 4
    t.string   "name",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "ipaddress",       limit: 255
  end

  create_table "sensor_data", force: :cascade do |t|
    t.integer  "data_type_id", limit: 4
    t.integer  "sensor_id",    limit: 4
    t.datetime "captured_at"
    t.integer  "idata",        limit: 4
    t.float    "fdata",        limit: 24
    t.text     "tdata",        limit: 65535
    t.datetime "timedata"
    t.string   "type",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "sensor_data", ["type"], name: "index_sensor_data_on_type", using: :btree

  create_table "sensor_data_types", force: :cascade do |t|
    t.integer  "sensor_id",    limit: 4
    t.integer  "data_type_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.integer  "machine_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
