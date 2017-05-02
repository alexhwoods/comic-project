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

ActiveRecord::Schema.define(version: 20170411165045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "meta_character_id"
  end

  add_index "characters", ["first_name", "last_name", "meta_character_id"], name: "no_duplicates_ch", unique: true, using: :btree

  create_table "characters_comics", id: false, force: :cascade do |t|
    t.integer "comic_id"
    t.integer "character_id"
  end

  add_index "characters_comics", ["comic_id", "character_id"], name: "index_characters_comics_on_comic_id_and_character_id", using: :btree

  create_table "comics", force: :cascade do |t|
    t.string   "title",         limit: 255,                 null: false
    t.string   "issue_name",    limit: 255
    t.integer  "issue_num"
    t.integer  "year",                                      null: false
    t.string   "story_arc",     limit: 100
    t.boolean  "graphic_novel",             default: false
    t.string   "imprint",       limit: 40
    t.string   "publisher_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "description"
    t.string   "image_name"
  end

  add_index "comics", ["title", "issue_name", "issue_num", "year"], name: "no_duplicates1", unique: true, using: :btree
  add_index "comics", ["title", "issue_num", "year"], name: "index_comics_on_title_and_issue_num_and_year", using: :btree
  add_index "comics", ["title", "year"], name: "index_comics_on_title_and_year", using: :btree

  create_table "comics_creators", id: false, force: :cascade do |t|
    t.integer "comic_id"
    t.integer "creator_id"
  end

  add_index "comics_creators", ["comic_id", "creator_id"], name: "index_comics_creators_on_comic_id_and_creator_id", using: :btree

  create_table "creators", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "meta_characters", force: :cascade do |t|
    t.string  "name"
    t.string  "publisher_id"
    t.string  "page_name"
    t.integer "parent_mc_id"
  end

  add_index "meta_characters", ["name", "publisher_id"], name: "no_duplicates_mc", unique: true, using: :btree

  create_table "pages", force: :cascade do |t|
    t.integer "meta_character_id"
    t.text    "page"
    t.string  "image_name"
    t.string  "image_size"
  end

  create_table "publishers", primary_key: "name", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email",    limit: 80, null: false
    t.string "password", limit: 80
  end

end
