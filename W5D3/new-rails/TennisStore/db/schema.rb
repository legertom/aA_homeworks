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

ActiveRecord::Schema.define(version: 2022_06_26_215136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.string "nationality"
    t.index ["name"], name: "index_brands_on_name"
  end

  create_table "courts", force: :cascade do |t|
    t.string "court_name", null: false
    t.string "address"
    t.integer "num_courts"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.float "usta_level"
    t.string "play_style"
    t.integer "home_court_id"
    t.string "nickname"
    t.index ["name"], name: "index_players_on_name"
  end

  create_table "racquets", force: :cascade do |t|
    t.string "model_name", null: false
    t.integer "weight"
    t.float "price"
    t.string "string_pattern"
    t.string "serial_number", default: "f", null: false
    t.integer "player_id", default: 0, null: false
    t.integer "brand_id", null: false
    t.index ["model_name"], name: "index_racquets_on_model_name"
    t.index ["serial_number"], name: "index_racquets_on_serial_number"
  end

end
