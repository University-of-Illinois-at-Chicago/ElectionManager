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

ActiveRecord::Schema.define(:version => 20150416191846) do

  create_table "answers", :force => true do |t|
    t.integer  "election_id", :null => false
    t.integer  "question_id", :null => false
    t.string   "answer",      :null => false
    t.string   "updid",       :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ballots", :force => true do |t|
    t.integer  "election_id", :null => false
    t.datetime "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "election_users", :force => true do |t|
    t.integer  "election_id",                     :null => false
    t.integer  "user_id",                         :null => false
    t.boolean  "edit",         :default => false, :null => false
    t.boolean  "view_results", :default => false, :null => false
    t.string   "updid",                           :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "elections", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "contact",     :default => "", :null => false
    t.integer  "user_id",                     :null => false
    t.datetime "start",                       :null => false
    t.datetime "finish",                      :null => false
    t.string   "updid",                       :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "election_id",                :null => false
    t.string   "question",                   :null => false
    t.integer  "limit",       :default => 1, :null => false
    t.boolean  "write_in"
    t.string   "updid",                      :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
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
    t.integer  "election_id",                    :null => false
    t.integer  "user_id",                        :null => false
    t.boolean  "voted",       :default => false, :null => false
    t.string   "updid",                          :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "votes", :force => true do |t|
    t.integer  "ballot_id",  :null => false
    t.integer  "answer_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
