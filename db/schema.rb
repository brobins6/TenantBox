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

ActiveRecord::Schema.define(version: 20180406003218) do

  create_table "messages", force: :cascade do |t|
    t.string   "sender"
    t.string   "receiver"
    t.string   "content"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "unread"
    t.string   "subject"
  end

  create_table "requests", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.string   "email"
    t.string   "option"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "tenant"
    t.string   "email"
    t.string   "rent"
    t.string   "unreadMess"
    t.string   "maintenance"
    t.string   "messages"
    t.string   "propLoc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "group"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
