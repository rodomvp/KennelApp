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

ActiveRecord::Schema.define(version: 20160426030515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",         default: 0, null: false
    t.integer  "attempts",         default: 0, null: false
    t.text     "handler",                      null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "progress_stage"
    t.integer  "progress_current", default: 0
    t.integer  "progress_max",     default: 0
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "feed_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patient_id"
  end

  add_index "notes", ["patient_id", "created_at"], name: "index_notes_on_patient_id_and_created_at", using: :btree

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
    t.string   "breed"
    t.float    "weight"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "owner_id"
    t.string   "belongings"
    t.string   "diet"
    t.string   "feeds_per_day"
    t.string   "int"
    t.boolean  "npo"
    t.string   "feed_time"
    t.integer  "feed_list_id"
    t.boolean  "has_current_stay"
    t.string   "image"
  end

  add_index "patients", ["owner_id"], name: "index_patients_on_owner_id", using: :btree

  create_table "runns", force: :cascade do |t|
    t.string   "ident"
    t.string   "size"
    t.string   "amenities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ward_id"
    t.boolean  "occupied"
  end

  add_index "runns", ["ward_id"], name: "index_runns_on_ward_id", using: :btree

  create_table "stay_events", force: :cascade do |t|
    t.integer  "stay_id"
    t.datetime "scheduled_time_stamp"
    t.datetime "actual_time_stamp"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "remark"
    t.string   "type"
    t.boolean  "did_urinate"
    t.boolean  "did_defecate"
    t.boolean  "did_eat"
    t.text     "food_description"
  end

  add_index "stay_events", ["stay_id"], name: "index_stay_events_on_stay_id", using: :btree

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
    t.text     "belongings"
  end

  add_index "stays", ["patient_id"], name: "index_stays_on_patient_id", using: :btree
  add_index "stays", ["runn_id"], name: "index_stays_on_runn_id", using: :btree

  create_table "uds", force: :cascade do |t|
    t.string   "u1"
    t.string   "u2"
    t.string   "u3"
    t.string   "u4"
    t.string   "d1"
    t.string   "d2"
    t.string   "d3"
    t.string   "d4"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uds", ["patient_id"], name: "index_uds_on_patient_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.string   "image"
  end

  create_table "ward_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "ward_id"
  end

  create_table "wards", force: :cascade do |t|
    t.string   "ident"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stay_events", "stays"
  add_foreign_key "stays", "patients"
  add_foreign_key "stays", "runns"
  add_foreign_key "uds", "patients"
end
