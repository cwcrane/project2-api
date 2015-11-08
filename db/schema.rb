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

ActiveRecord::Schema.define(version: 20151106205820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title",                            null: false
    t.string   "author"
    t.integer  "user_id"
    t.string   "isbn"
    t.string   "status",     default: "Available"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "books", ["user_id"], name: "index_books_on_user_id", using: :btree

  create_table "borrow_requests", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.date     "request_date"
    t.date     "response_date"
    t.boolean  "response",      default: false
    t.date     "due_back"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "borrow_requests", ["book_id"], name: "index_borrow_requests_on_book_id", using: :btree
  add_index "borrow_requests", ["user_id"], name: "index_borrow_requests_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "rating"
    t.string   "review"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["book_id"], name: "index_ratings_on_book_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "books", "users"
  add_foreign_key "borrow_requests", "books"
  add_foreign_key "borrow_requests", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "ratings", "books"
end
