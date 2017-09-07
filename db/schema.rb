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

ActiveRecord::Schema.define(version: 20170906165004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invitations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trip_id"
    t.string "email"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "user_id"
    t.text "message"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.boolean "backcountry_cabin", default: false
    t.boolean "backcountry_camping", default: false
    t.boolean "barrier_free", default: false
    t.boolean "biking", default: false
    t.boolean "birding", default: false
    t.boolean "boating", default: false
    t.boolean "boat_launch", default: false
    t.boolean "canoeing", default: false
    t.boolean "car_camping", default: false
    t.boolean "comfort_station", default: false
    t.boolean "cottage", default: false
    t.boolean "camp_cabin", default: false
    t.boolean "day_use", default: false
    t.boolean "dog_free_camping", default: false
    t.boolean "fishing", default: false
    t.boolean "flush_toilets", default: false
    t.boolean "group_camping", default: false
    t.boolean "hiking", default: false
    t.boolean "hunting", default: false
    t.boolean "laundromat", default: false
    t.boolean "natural_heritage_education", default: false
    t.boolean "park_store", default: false
    t.boolean "pet_exercise_area", default: false
    t.boolean "picnic_shelters", default: false
    t.boolean "radio_free_camping", default: false
    t.boolean "rentals", default: false
    t.boolean "roofed_accommodation", default: false
    t.boolean "swimming", default: false
    t.boolean "trailer_storage", default: false
    t.boolean "visitor_centre", default: false
    t.boolean "walk_in_camping", default: false
    t.boolean "winter_activities", default: false
    t.boolean "yurt", default: false
    t.boolean "trailer_equipped_campsite", default: false
    t.boolean "rustic_cabin", default: false
    t.boolean "soft_sided_shelter", default: false
    t.boolean "winter_camping", default: false
    t.boolean "shuttle_service", default: false
    t.boolean "parking", default: false
    t.boolean "lodge", default: false
    t.boolean "seasonal_campsite_program", default: false
  end

  create_table "todos", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "user_id"
    t.string "text"
    t.string "label", default: "do"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.boolean "booked", default: false
    t.integer "park_id"
    t.date "start_date"
    t.date "end_date"
  end

  create_table "trips_users", id: false, force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "user_id", null: false
    t.index ["trip_id"], name: "index_trips_users_on_trip_id"
    t.index ["user_id"], name: "index_trips_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
  end

end
