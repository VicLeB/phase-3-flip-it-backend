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

ActiveRecord::Schema.define(version: 2022_07_30_143433) do

  create_table "addresses", force: :cascade do |t|
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.integer "house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "owner_name"
    t.string "image_url"
    t.integer "address_id"
    t.integer "room_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "cost"
    t.integer "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "part_id"
    t.integer "tool_id"
    t.integer "room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "project_id"
    t.integer "house_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "project_id"
  end

end