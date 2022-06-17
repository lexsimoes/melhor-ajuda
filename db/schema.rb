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

ActiveRecord::Schema.define(version: 2022_06_17_005927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.text "description"
    t.bigint "question_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_alternatives_on_question_id"
    t.index ["specialty_id"], name: "index_alternatives_on_specialty_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.time "time2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "therapist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["therapist_id"], name: "index_matches_on_therapist_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "therapist_specialties", force: :cascade do |t|
    t.bigint "specialty_id", null: false
    t.bigint "therapist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_therapist_specialties_on_specialty_id"
    t.index ["therapist_id"], name: "index_therapist_specialties_on_therapist_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "alternative_id", null: false
    t.bigint "user_id"
    t.string "email"
    t.date "date"
    t.time "second_time_option"
    t.string "time"
    t.index ["alternative_id"], name: "index_user_answers_on_alternative_id"
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.time "second_time_option"
    t.string "time"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alternatives", "questions"
  add_foreign_key "alternatives", "specialties"
  add_foreign_key "matches", "therapists"
  add_foreign_key "matches", "users"
  add_foreign_key "therapist_specialties", "specialties"
  add_foreign_key "therapist_specialties", "therapists"
  add_foreign_key "user_answers", "alternatives"
  add_foreign_key "user_answers", "questions"
end
