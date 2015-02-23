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

ActiveRecord::Schema.define(version: 20140125045023) do

  create_table "already_serifs", force: :cascade do |t|
    t.string   "word",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_serifs", force: :cascade do |t|
    t.string   "word",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "niconico_fav_users", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "niconico_movie_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "niconico_movies", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.boolean  "disabled",    limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "niconico_populars", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.string   "description", limit: 255
    t.integer  "priority",    limit: 4
    t.boolean  "used",        limit: 1,   default: false
    t.boolean  "disabled",    limit: 1,   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "niconico_rt_users", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "niconico_movie_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "popular_serifs", force: :cascade do |t|
    t.string   "word",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reply_serifs", force: :cascade do |t|
    t.string   "word",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serifs", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "word",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "today_niconicos", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.boolean  "used",        limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "today_youtubes", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.boolean  "used",        limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "twitter_id",  limit: 8
    t.string   "screen_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "youtube_fav_users", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "youtube_movie_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "youtube_movies", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.boolean  "disabled",    limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "youtube_populars", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.boolean  "used",        limit: 1,     default: false
    t.boolean  "disabled",    limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "youtube_rt_users", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "youtube_movie_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
