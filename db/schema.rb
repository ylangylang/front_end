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

ActiveRecord::Schema.define(version: 20141012045244) do

  create_table "comments", force: true do |t|
    t.integer  "task_id"
    t.string   "state"
    t.integer  "feeling"
    t.integer  "progress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["task_id"], name: "index_comments_on_task_id"

  create_table "tasks", force: true do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.text     "detail"
    t.datetime "started_on"
    t.datetime "finished_on"
    t.datetime "due_date"
    t.integer  "status_id"
    t.string   "tag_id"
    t.integer  "icon_id"
    t.boolean  "is_current"
    t.boolean  "is_indicated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
