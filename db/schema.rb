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

ActiveRecord::Schema[7.0].define(version: 2022_09_05_175608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "community_events", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.string "description", null: false
    t.string "location", null: false
    t.integer "goal", null: false
    t.integer "goal_target", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_community_events_on_user_id"
  end

  create_table "donations", force: :cascade do |t|
    t.boolean "monthly", default: false, null: false
    t.integer "amount", null: false
    t.bigint "user_id", null: false
    t.string "payment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "report_new_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "report_new_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_new_id"], name: "index_report_new_likes_on_report_new_id"
    t.index ["user_id"], name: "index_report_new_likes_on_user_id"
  end

  create_table "report_news", force: :cascade do |t|
    t.string "description", null: false
    t.boolean "active", default: true
    t.string "title", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_report_news_on_user_id"
  end

  create_table "user_depositions", force: :cascade do |t|
    t.string "description", null: false
    t.boolean "hide_name", default: false, null: false
    t.boolean "active", default: false, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_depositions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "first_name", null: false
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "community_events", "users"
  add_foreign_key "donations", "users"
  add_foreign_key "report_new_likes", "report_news", column: "report_new_id"
  add_foreign_key "report_new_likes", "users"
  add_foreign_key "report_news", "users"
  add_foreign_key "user_depositions", "users"
end
