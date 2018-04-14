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

ActiveRecord::Schema.define(version: 20180414165149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barters", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "product_barter_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_barter_id"], name: "index_barters_on_product_barter_id"
    t.index ["product_id"], name: "index_barters_on_product_id"
  end

  create_table "product_barters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "picture"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_barters_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_type"
    t.string "name"
    t.integer "lowest_price"
    t.integer "highest_price"
    t.date "date"
    t.string "status"
    t.text "description"
    t.string "picture"
    t.bigint "user_id"
    t.bigint "village_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
    t.index ["village_id"], name: "index_products_on_village_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "password_digest"
    t.string "phone"
    t.string "gender"
    t.string "picture"
    t.bigint "village_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["village_id"], name: "index_users_on_village_id"
  end

  create_table "villages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "barters", "product_barters"
  add_foreign_key "barters", "products"
  add_foreign_key "product_barters", "users"
  add_foreign_key "products", "users"
  add_foreign_key "products", "villages"
  add_foreign_key "users", "villages"
end
