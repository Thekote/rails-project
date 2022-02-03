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

ActiveRecord::Schema.define(version: 2022_02_03_212948) do

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id", "name"], name: "index_contacts_on_user_id_and_name", unique: true
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number", null: false
    t.string "label", null: false
    t.boolean "is_default", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "contact_id", null: false
    t.index ["contact_id"], name: "index_phones_on_contact_id"
    t.index ["number"], name: "index_phones_on_number", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "contacts", "users"
  add_foreign_key "phones", "contacts"
end
