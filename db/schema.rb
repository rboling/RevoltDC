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

ActiveRecord::Schema.define(:version => 20130622194659) do

  create_table "bars", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "politician_requests", :force => true do |t|
    t.text     "request"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "politician"
    t.integer  "user_id"
  end

  create_table "politicians", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.integer  "district"
    t.string   "office"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "email"
  end

  create_table "text_messages", :force => true do |t|
    t.text     "content"
    t.string   "receiver"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
    t.string   "password"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.text     "bio"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "state"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "email"
    t.string   "phone_number"
    t.boolean  "is_politician"
  end

end
