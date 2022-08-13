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

ActiveRecord::Schema.define(version: 2022_08_13_193545) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id"
    t.string "fullname"
    t.string "cnic"
    t.string "address"
    t.integer "salary"
    t.string "contact"
    t.integer "restaurants_id", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["restaurants_id"], name: "index_admins_on_restaurants_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_categories_on_restaurant_id"
  end

  create_table "categories_menu_items", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deal_menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deal_menu_items_deals", id: false, force: :cascade do |t|
    t.integer "deal_id", null: false
    t.integer "deal_menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurants_id", null: false
    t.index ["restaurants_id"], name: "index_deals_on_restaurants_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.float "discount_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_discounts_on_restaurant_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.string "item_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "order_itemable_type"
    t.integer "order_itemable_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.string "status"
    t.string "payment_type"
    t.boolean "payment_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.float "per_cut"
    t.time "opening_hours"
    t.time "closing_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "manager_id"
  end

  add_foreign_key "admins", "admins", column: "manager_id"
  add_foreign_key "admins", "restaurants", column: "restaurants_id"
  add_foreign_key "categories", "restaurants"
  add_foreign_key "deals", "restaurants", column: "restaurants_id"
  add_foreign_key "discounts", "restaurants"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "restaurants", "admins", column: "manager_id"
end
