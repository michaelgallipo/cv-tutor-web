# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_22_235714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "school"
    t.string "email"
    t.string "phone"
    t.boolean "phone_visible"
    t.text "about"
    t.integer "grade_min"
    t.integer "grade_max"
    t.string "rate"
    t.boolean "accept_new"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.boolean "math", default: false
    t.boolean "reading", default: false
    t.boolean "science", default: false
    t.boolean "social_studies", default: false
    t.boolean "special_needs", default: false
    t.boolean "spelling", default: false
  end

end
