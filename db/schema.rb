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

ActiveRecord::Schema.define(version: 20131210183311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "receiver_username"
    t.boolean  "read"
  end

  create_table "posts", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.string   "activity1"
    t.string   "activity2"
  end

  create_table "recommenders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_prefs", force: true do |t|
    t.integer  "swimming"
    t.integer  "hiking"
    t.integer  "diving"
    t.integer  "climbing"
    t.integer  "skydiving"
    t.integer  "eating"
    t.integer  "clubbing"
    t.integer  "beach"
    t.integer  "skiing"
    t.integer  "snowboarding"
    t.integer  "ziplining"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "touring"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.integer  "age"
  end

end
