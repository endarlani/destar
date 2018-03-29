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

ActiveRecord::Schema.define(version: 20180329062109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_sus", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_users", force: :cascade do |t|
    t.bigint "village_user_id"
    t.bigint "product_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_detail_users_on_product_id"
    t.index ["service_id"], name: "index_detail_users_on_service_id"
    t.index ["village_user_id"], name: "index_detail_users_on_village_user_id"
  end

  create_table "outsider_users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "price"
    t.date "date"
    t.integer "rating"
    t.text "info"
    t.string "picture"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "lowest_price"
    t.date "date"
    t.integer "rating"
    t.integer "highest_price"
    t.text "info"
    t.string "picture"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_services_on_category_id"
  end

  create_table "village_users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "phone"
    t.string "email"
    t.text "location"
    t.string "picture"
    t.bigint "village_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["village_id"], name: "index_village_users_on_village_id"
  end

  create_table "villages", force: :cascade do |t|
    t.string "name"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_villages_on_admin_id"
  end

  add_foreign_key "detail_users", "products"
  add_foreign_key "detail_users", "services"
  add_foreign_key "detail_users", "village_users"
  add_foreign_key "products", "categories"
  add_foreign_key "services", "categories"
  add_foreign_key "village_users", "villages"
  add_foreign_key "villages", "admins"
end
