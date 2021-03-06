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

ActiveRecord::Schema.define(:version => 20150325182408) do

  create_table "excerpts", :force => true do |t|
    t.text     "excerpt"
    t.text     "source"
    t.integer  "person_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keyword_items", :force => true do |t|
    t.integer "keyword_id"
    t.integer "item_id"
    t.text    "item_type"
  end

  create_table "keywords", :force => true do |t|
    t.text     "keyword"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.text     "person"
    t.text     "bio"
    t.text     "state"
    t.text     "country"
    t.text     "image"
    t.text     "caption"
    t.text     "source"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.text     "quote"
    t.integer  "person_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", :force => true do |t|
    t.text     "term"
    t.text     "definition"
    t.text     "phonetic"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.text     "user_name"
    t.text     "email"
    t.text     "password_hash"
    t.integer  "privilege"
    t.datetime "created_at"
    t.string   "status",        :default => "active"
  end

end
