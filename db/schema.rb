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

ActiveRecord::Schema.define(version: 20161004163733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkouts", force: :cascade do |t|
    t.integer  "drive_id"
    t.string   "borrower",    null: false
    t.string   "status",      null: false
    t.date     "date",        null: false
    t.text     "purpose"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "returner"
    t.date     "return_date"
  end

  add_index "checkouts", ["drive_id"], name: "index_checkouts_on_drive_id", using: :btree

  create_table "drives", force: :cascade do |t|
    t.string   "name",                     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "brand"
    t.float    "capacity",   default: 2.0, null: false
    t.string   "location"
    t.string   "project",                  null: false
    t.text     "notes"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "name"
    t.string "group_strings"
  end

end
