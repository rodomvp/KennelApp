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

ActiveRecord::Schema.define(version: 20151113204101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.string   "breed"
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
  end

  add_index "patients", ["owner_id"], name: "index_patients_on_owner_id", using: :btree

  create_table "runns", force: :cascade do |t|
    t.string   "ident"
    t.string   "size"
    t.string   "animal_type"
    t.string   "amenities"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "ward_id"
  end

  add_index "runns", ["ward_id"], name: "index_runns_on_ward_id", using: :btree

  create_table "stays", force: :cascade do |t|
    t.boolean  "is_current"
    t.datetime "check_in_dt"
    t.datetime "check_out_dt"
    t.datetime "sch_check_in_dt"
    t.datetime "sch_check_out_dt"
    t.integer  "patient_id"
    t.integer  "runn_id"
    t.text     "remarks"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "stays", ["patient_id"], name: "index_stays_on_patient_id", using: :btree
  add_index "stays", ["runn_id"], name: "index_stays_on_runn_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wards", force: :cascade do |t|
    t.string   "ident"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stays", "patients"
  add_foreign_key "stays", "runns"
end