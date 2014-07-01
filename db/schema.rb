# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140701000951) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "carType"
    t.string   "year"
    t.string   "generation"
    t.string   "model"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars_spare_parts", id: false, force: true do |t|
    t.integer "id_car"
    t.integer "id_spare_part"
  end

  create_table "spare_parts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "carRegion"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stock_spare_parts", force: true do |t|
    t.string   "status"
    t.integer  "workshop_car_id"
    t.integer  "spare_part_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "password_digest"
    t.integer  "permissions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouses", force: true do |t|
    t.string   "branch"
    t.string   "location"
    t.string   "geolocation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workshop_cars", force: true do |t|
    t.string   "color"
    t.integer  "doorNumber"
    t.string   "status"
    t.string   "idSerie"
    t.string   "idMotor"
    t.string   "licensePlates"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
