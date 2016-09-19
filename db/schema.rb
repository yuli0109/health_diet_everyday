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

ActiveRecord::Schema.define(version: 20160919162151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "calorie"
    t.float    "fat"
    t.float    "protein"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portions", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "record_id"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "portions", ["food_id"], name: "index_portions_on_food_id", using: :btree
  add_index "portions", ["record_id"], name: "index_portions_on_record_id", using: :btree

  create_table "records", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date_create"
    t.integer  "total_calorie"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "date_of_birth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "portions", "foods"
  add_foreign_key "portions", "records"
end
