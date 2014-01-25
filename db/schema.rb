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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140125045023) do

  create_table "already_serifs", :force => true do |t|
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "new_serifs", :force => true do |t|
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "niconico_fav_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "niconico_movie_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "niconico_movies", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "disabled",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "niconico_populars", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.integer  "priority"
    t.boolean  "used",        :default => false
    t.boolean  "disabled",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "niconico_rt_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "niconico_movie_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "popular_serifs", :force => true do |t|
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reply_serifs", :force => true do |t|
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "serifs", :force => true do |t|
    t.string   "type"
    t.string   "word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "today_niconicos", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "used",        :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "today_youtubes", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "used",        :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "twitter_id",  :limit => 8
    t.string   "screen_name"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "youtube_fav_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "youtube_movie_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "youtube_movies", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "disabled",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "youtube_populars", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "used",        :default => false
    t.boolean  "disabled",    :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "youtube_rt_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "youtube_movie_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
