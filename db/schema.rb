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

ActiveRecord::Schema.define(version: 20150517172121) do

  create_table "criteria", force: true do |t|
    t.string   "school_name"
    t.string   "evaluator_name"
    t.string   "evaluated_name"
    t.string   "subject"
    t.string   "sudent_id"
    t.string   "employee_id"
    t.string   "eval_id"
    t.string   "vanguard"
    t.decimal  "class_period"
    t.decimal  "grade"
    t.boolean  "student_employee"
    t.text     "pl1"
    t.text     "pl2"
    t.text     "pl3"
    t.text     "i1"
    t.text     "i2"
    t.text     "i3"
    t.text     "i4"
    t.text     "i5"
    t.text     "i6"
    t.text     "i7"
    t.text     "i8"
    t.text     "i9"
    t.text     "i10"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "pr1"
    t.text     "pr2"
    t.text     "pr3"
    t.text     "pr4"
    t.text     "pr5"
    t.text     "pr6"
    t.text     "pr7"
    t.text     "pr8"
    t.text     "pr9"
    t.text     "note"
    t.string   "file_upload_file_name"
    t.string   "file_upload_content_type"
    t.integer  "file_upload_file_size"
    t.datetime "file_upload_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
