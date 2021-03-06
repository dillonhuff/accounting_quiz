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

ActiveRecord::Schema.define(version: 20160704045255) do

  create_table "base_plates", force: :cascade do |t|
    t.float    "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prediction_taggings", force: :cascade do |t|
    t.integer  "prediction_id"
    t.integer  "tag_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "prediction_taggings", ["prediction_id"], name: "index_prediction_taggings_on_prediction_id"
  add_index "prediction_taggings", ["tag_id"], name: "index_prediction_taggings_on_tag_id"

  create_table "predictions", force: :cascade do |t|
    t.text     "content"
    t.integer  "pundit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pundits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "prediction_id"
    t.integer  "rating"
    t.string   "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "title"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
