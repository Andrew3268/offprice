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

ActiveRecord::Schema.define(version: 2021_12_26_065128) do

  create_table "homes", force: :cascade do |t|
    t.integer "user_id"
    t.string "image"
    t.string "title"
    t.string "sub_title"
    t.string "friendly_id"
    t.string "hashtag"
    t.text "description"
    t.string "link"
    t.string "spare_01"
    t.string "spare_02"
    t.string "spare_03"
    t.string "spare_04"
    t.string "spare_05"
    t.string "spare_06"
    t.string "spare_07"
    t.string "spare_08"
    t.string "spare_09"
    t.text "spare_31"
    t.text "spare_32"
    t.float "spare_41"
    t.float "spare_42"
    t.float "spare_43"
    t.float "spare_44"
    t.float "spare_45"
    t.integer "spare_56"
    t.integer "spare_57"
    t.integer "spare_58"
    t.integer "spare_59"
    t.integer "spare_60"
    t.decimal "spare_61"
    t.decimal "spare_62"
    t.decimal "spare_63"
    t.decimal "spare_64"
    t.decimal "spare_65"
    t.datetime "spare_66"
    t.datetime "spare_67"
    t.datetime "spare_68"
    t.date "spare_71"
    t.date "spare_72"
    t.date "spare_73"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homes_tags", id: false, force: :cascade do |t|
    t.integer "home_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_homes_tags_on_home_id"
    t.index ["tag_id"], name: "index_homes_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "homes_tags", "homes"
  add_foreign_key "homes_tags", "tags"
end
