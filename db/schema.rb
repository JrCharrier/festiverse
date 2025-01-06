# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_01_06_154940) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "festival_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_favorites_on_festival_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "festival_feeds", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "festival_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_festival_feeds_on_festival_id"
    t.index ["user_id"], name: "index_festival_feeds_on_user_id"
  end

  create_table "festivals", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "genre"
    t.text "description"
    t.string "image_url"
    t.text "line_up"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_festivals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "festival_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_my_festivals_on_festival_id"
    t.index ["user_id"], name: "index_my_festivals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "festivals"
  add_foreign_key "favorites", "users"
  add_foreign_key "festival_feeds", "festivals"
  add_foreign_key "festival_feeds", "users"
  add_foreign_key "my_festivals", "festivals"
  add_foreign_key "my_festivals", "users"
end
