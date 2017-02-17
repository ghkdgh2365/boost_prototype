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

ActiveRecord::Schema.define(version: 20170217075452) do

  create_table "bulletins", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "post_type"
    t.integer  "post_type_cd", default: 0
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "racer_name"
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "set_money"
    t.string   "checker_name"
    t.string   "receiver_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "bulletin_id"
  end

  add_index "posts", ["bulletin_id"], name: "index_posts_on_bulletin_id"

end
