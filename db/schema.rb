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

ActiveRecord::Schema.define(version: 20180920232533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "picture_infos", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.string "aws_id"
    t.string "title"
    t.string "filename"
    t.string "filepath"
    t.string "aws_url"
    t.date "data_warehouse_open_date"
    t.date "data_warehouse_close_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_picture_infos_on_picture_id"
  end

  create_table "picture_measurements", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.float "picture_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_picture_measurements_on_picture_id"
  end

  create_table "picture_win_losses", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.string "evaluating_user_id"
    t.string "winning_picture_id"
    t.string "losing_picture_id"
    t.float "weight"
    t.date "data_warehouse_open_date"
    t.date "data_warehouse_close_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_picture_win_losses_on_picture_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "user_infos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "email"
    t.string "password"
    t.string "gender"
    t.string "attracted_to"
    t.float "user_rating"
    t.integer "age"
    t.integer "age_preference_min"
    t.integer "age_preference_max"
    t.date "data_warehouse_open_date"
    t.date "data_warehouse_close_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "examples", "users"
  add_foreign_key "picture_infos", "pictures"
  add_foreign_key "picture_measurements", "pictures"
  add_foreign_key "picture_win_losses", "pictures"
  add_foreign_key "pictures", "users"
  add_foreign_key "user_infos", "users"
end
