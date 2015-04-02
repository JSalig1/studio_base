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

ActiveRecord::Schema.define(version: 20150401201410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archives", force: :cascade do |t|
    t.string   "archive_number", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "project_archives", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "archive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "project_archives", ["archive_id"], name: "index_project_archives_on_archive_id", using: :btree
  add_index "project_archives", ["project_id"], name: "index_project_archives_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "project_number", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
