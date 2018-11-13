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

ActiveRecord::Schema.define(version: 2018_10_04_020531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["service_id"], name: "index_bookings_on_service_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 20, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", limit: 200, null: false
    t.bigserial "category_id", null: false
    t.bigserial "station_id", null: false
    t.bigserial "weight", null: false
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "img"
    t.text "bio"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.string "img"
    t.bigint "service_provider_id"
    t.boolean "is_booked"
    t.index ["service_provider_id"], name: "index_services_on_service_provider_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name", limit: 200, null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "services"
end
