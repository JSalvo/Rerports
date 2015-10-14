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

ActiveRecord::Schema.define(version: 20151012213200) do

  create_table "activities", force: :cascade do |t|
    t.text     "description"
    t.time     "hour"
    t.integer  "report_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activities", ["report_id"], name: "index_activities_on_report_id"

  create_table "customers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "address"
    t.string   "cap"
    t.string   "city"
    t.string   "email"
    t.string   "cf"
    t.string   "piva"
    t.decimal  "hour_price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "county"
  end

  create_table "reports", force: :cascade do |t|
    t.date     "report_date"
    t.time     "hour"
    t.time     "hour_trip"
    t.boolean  "billed"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  add_index "reports", ["customer_id"], name: "index_reports_on_customer_id"

end
