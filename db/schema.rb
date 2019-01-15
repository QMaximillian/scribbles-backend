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

ActiveRecord::Schema.define(version: 2019_01_14_175913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invitations", force: :cascade do |t|
    t.string "email"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_ranges", force: :cascade do |t|
    t.date "begin_date"
    t.date "end_date"
    t.time "cut_off_early"
    t.time "cut_off_late"
    t.integer "interval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_times", force: :cascade do |t|
    t.integer "meeting_range_id"
    t.integer "user_id"
    t.date "day"
    t.datetime "begin_time"
    t.datetime "end_time"
    t.boolean "affirmative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 35
    t.integer "meeting_range_id"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
