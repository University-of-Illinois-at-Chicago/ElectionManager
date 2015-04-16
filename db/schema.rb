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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150416190553) do

  create_table "answers", :force => true do |t|
    t.integer  "election_id"
    t.integer  "question_id"
    t.string   "answer"
    t.string   "updid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ballots", :force => true do |t|
    t.integer  "election_id"
    t.datetime "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "election_users", :force => true do |t|
    t.integer  "election_id"
    t.integer  "user_id"
    t.boolean  "edit"
    t.boolean  "view_results"
    t.string   "updid"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "elections", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "contact"
    t.integer  "owner_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "updid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "election_id"
    t.string   "question"
    t.integer  "limit"
    t.boolean  "write_in"
    t.string   "updid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "netid"
    t.string   "updid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "voters", :force => true do |t|
    t.integer  "election_id"
    t.integer  "user_id"
    t.boolean  "voted"
    t.string   "updid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "votes", :force => true do |t|
    t.integer  "ballot_id"
    t.integer  "answer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
