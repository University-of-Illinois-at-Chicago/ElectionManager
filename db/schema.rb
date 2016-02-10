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

ActiveRecord::Schema.define(version: 20150716220253) do

  create_table "elections", id: false, force: :cascade do |t|
    t.integer  "id",          limit: 4,     default: 0,         null: false
    t.string   "title",       limit: 255,   default: "",        null: false
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255,   default: "",        null: false
    t.integer  "user_id",     limit: 4,                         null: false
    t.datetime "start"
    t.datetime "finish"
    t.string   "updid",       limit: 255,   default: "Unknown", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elections", ["id"], name: "index_elections_on_id", unique: true, using: :btree

end
