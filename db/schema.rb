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

ActiveRecord::Schema.define(version: 20171027045645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "question_id"
    t.text "content"
    t.string "value"
  end

  create_table "data_stores", force: :cascade do |t|
    t.bigint "survey_id"
    t.json "surveys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_data_stores_on_survey_id"
  end

  create_table "hours", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "subject"
    t.text "description"
    t.date "day"
    t.time "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image_id"
    t.string "image_filename"
    t.integer "image_size"
    t.string "image_content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navigations", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "target"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "background_color"
    t.text "content_right"
    t.text "content_left"
    t.boolean "animation_right"
    t.boolean "animation_left"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "banner"
    t.json "background_image"
    t.string "page_type"
    t.string "name"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "survey_id"
    t.text "name"
    t.text "description"
    t.string "question_type"
  end

  create_table "sliders", force: :cascade do |t|
    t.string "url"
    t.string "target"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "page_id"
  end

  create_table "survey_files", force: :cascade do |t|
    t.bigint "survey_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_survey_files_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "banner"
    t.datetime "start_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "data_stores", "surveys"
  add_foreign_key "survey_files", "surveys"
end
