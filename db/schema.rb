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

ActiveRecord::Schema.define(version: 20171222204703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "excursion_occurrences", force: :cascade do |t|
    t.datetime "time"
    t.integer "excursion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "excursions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "duration"
    t.string "price"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "host_id"
    t.float "lat"
    t.float "lng"
    t.string "address"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_excursion_id"
    t.float "host_rating"
    t.text "host_review"
    t.float "excursion_rating"
    t.text "excursion_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_excursions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "excursion_occurrence_id"
    t.boolean "is_host"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
