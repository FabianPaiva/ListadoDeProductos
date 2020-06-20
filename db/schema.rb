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

ActiveRecord::Schema.define(version: 2020_06_10_201836) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_name"], name: "index_brands_on_brand_name"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "document_number"
    t.integer "telephone"
    t.string "limite_credito"
    t.string "address"
    t.string "gender"
    t.integer "ruc"
    t.string "customer_type"
    t.date "birth_date"
  end

  create_table "colors", force: :cascade do |t|
    t.string "color_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officials", force: :cascade do |t|
    t.integer "document_number"
    t.string "first_name"
    t.string "last_name"
    t.integer "telephone"
    t.string "address"
    t.string "gender"
    t.string "civil_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birth_date"
    t.string "limite_credito"
    t.integer "position_id"
    t.index ["first_name", "last_name"], name: "index_officials_on_first_name_and_last_name", unique: true
    t.index ["position_id"], name: "index_officials_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "position_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string "service_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_types_id"
    t.index ["service_types_id"], name: "index_services_on_service_types_id"
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "vehicle_model_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "year_of_production"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_vehicle_models_on_brand_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "patent_number"
    t.string "chassis_number"
    t.integer "colors_id"
    t.integer "clients_id"
    t.integer "vehicle_models_id"
    t.index ["clients_id"], name: "index_vehicles_on_clients_id"
    t.index ["colors_id"], name: "index_vehicles_on_colors_id"
    t.index ["vehicle_models_id"], name: "index_vehicles_on_vehicle_models_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.string "year"
    t.string "patent_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "registration_date"
    t.date "registration_work"
  end

end
