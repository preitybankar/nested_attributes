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

ActiveRecord::Schema.define(version: 20140225184153) do

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "client_id"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "working_end_times", force: true do |t|
    t.integer  "client_id"
    t.time     "monday",     default: '2000-01-01 19:00:00'
    t.time     "tuesday",    default: '2000-01-01 19:00:00'
    t.time     "wednesday",  default: '2000-01-01 19:00:00'
    t.time     "thursday",   default: '2000-01-01 19:00:00'
    t.time     "friday",     default: '2000-01-01 19:00:00'
    t.time     "satruday",   default: '2000-01-01 19:00:00'
    t.time     "sunday",     default: '2000-01-01 19:00:00'
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "working_start_times", force: true do |t|
    t.integer  "client_id"
    t.time     "monday",     default: '2000-01-01 09:00:00'
    t.time     "tuesday",    default: '2000-01-01 09:00:00'
    t.time     "wednesday",  default: '2000-01-01 09:00:00'
    t.time     "thursday",   default: '2000-01-01 09:00:00'
    t.time     "friday",     default: '2000-01-01 09:00:00'
    t.time     "satruday",   default: '2000-01-01 09:00:00'
    t.time     "sunday",     default: '2000-01-01 09:00:00'
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
