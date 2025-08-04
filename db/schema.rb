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

ActiveRecord::Schema[8.0].define(version: 2025_07_27_213053) do
  create_table "admins", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "applicants", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "full_name", null: false
    t.string "professional_name"
    t.string "cellphone"
    t.string "type_of_applicant"
    t.boolean "associated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_applicants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_applicants_on_reset_password_token", unique: true
  end

  create_table "awards_ceremonies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "edition", null: false
    t.integer "year", null: false
    t.date "registration_opening_date"
    t.date "registration_closing_date"
    t.date "award_ceremony_date"
    t.boolean "opening_vote_phase", default: false
    t.boolean "closing_vote_phase", default: false
    t.boolean "generate_lists", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "type_of_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizers", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "name", null: false
    t.string "type_of_organizer", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_organizers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_organizers_on_reset_password_token", unique: true
  end

  create_table "work_registrations", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "applicants_id"
    t.string "title"
    t.string "category"
    t.text "description"
    t.string "work_link"
    t.string "work_attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicants_id"], name: "index_work_registrations_on_applicants_id"
  end

  add_foreign_key "work_registrations", "applicants", column: "applicants_id"
end
