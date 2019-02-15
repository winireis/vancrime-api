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

ActiveRecord::Schema.define(version: 2019_02_15_182446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crimes", force: :cascade do |t|
    t.bigint "datestamps_id"
    t.bigint "timestamps_id"
    t.bigint "offence_id"
    t.bigint "site_id"
    t.integer "counter"
    t.index ["datestamps_id"], name: "index_crimes_on_datestamps_id"
    t.index ["offence_id"], name: "index_crimes_on_offence_id"
    t.index ["site_id"], name: "index_crimes_on_site_id"
    t.index ["timestamps_id"], name: "index_crimes_on_timestamps_id"
  end

  create_table "datestamps", force: :cascade do |t|
    t.date "fulldate"
    t.integer "year"
    t.integer "month"
    t.integer "weekday"
    t.integer "day"
    t.index ["day"], name: "index_datestamps_on_day"
    t.index ["fulldate"], name: "index_datestamps_on_fulldate"
    t.index ["month"], name: "index_datestamps_on_month"
    t.index ["weekday"], name: "index_datestamps_on_weekday"
    t.index ["year"], name: "index_datestamps_on_year"
  end

  create_table "offences", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.index ["name"], name: "index_offences_on_name"
  end

  create_table "sites", force: :cascade do |t|
    t.string "neighbourhood"
    t.string "block"
    t.float "x"
    t.float "y"
    t.float "latitude"
    t.float "longitude"
    t.index ["block"], name: "index_sites_on_block"
    t.index ["neighbourhood"], name: "index_sites_on_neighbourhood"
  end

  create_table "timestamps", force: :cascade do |t|
    t.string "fulltime"
    t.integer "hour"
    t.integer "minute"
    t.index ["fulltime"], name: "index_timestamps_on_fulltime"
    t.index ["hour"], name: "index_timestamps_on_hour"
    t.index ["minute"], name: "index_timestamps_on_minute"
  end

end
