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

ActiveRecord::Schema.define(version: 2022_07_09_074534) do

  create_table "applications", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trainees_id"
    t.integer "trainers_id"
    t.integer "gyms_id"
    t.index ["gyms_id"], name: "index_applications_on_gyms_id"
    t.index ["trainees_id"], name: "index_applications_on_trainees_id"
    t.index ["trainers_id"], name: "index_applications_on_trainers_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "contact"
    t.string "description"
    t.string "fees"
    t.string "owner_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "trainees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "contact"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "experience"
    t.string "fees"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
