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

ActiveRecord::Schema.define(version: 20160508094943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "books", force: :cascade do |t|
    t.integer  "library_id"
    t.string   "name",            limit: 2000
    t.string   "author",          limit: 1000
    t.string   "cypher",          limit: 100
    t.string   "publisher",       limit: 256
    t.integer  "publishing_year"
    t.decimal  "price",                        precision: 10, scale: 2
    t.date     "supply_date"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "issuances", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "subscriber_id"
    t.date     "issuance_date"
    t.date     "return_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string   "number",     limit: 100
    t.string   "name",       limit: 1000
    t.string   "address",    limit: 500
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.integer  "library_id"
    t.integer  "ticket"
    t.string   "surname",    limit: 100
    t.string   "name",       limit: 100
    t.string   "patronymic", limit: 100
    t.string   "address",    limit: 1000
    t.string   "tel",        limit: 20
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "workers", force: :cascade do |t|
    t.integer  "library_id"
    t.string   "surname",     limit: 100
    t.string   "name",        limit: 100
    t.string   "patronymic",  limit: 100
    t.date     "birthday"
    t.date     "joined_date"
    t.string   "position",    limit: 256
    t.string   "education",   limit: 100
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
