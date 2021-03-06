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

ActiveRecord::Schema.define(version: 20190110214859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "position_papers", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.text "question_1"
    t.text "question_2"
    t.text "question_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_url"
    t.string "permalink"
    t.integer "order_index"
    t.index ["permalink"], name: "index_position_papers_on_permalink"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subscription"
    t.string "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
