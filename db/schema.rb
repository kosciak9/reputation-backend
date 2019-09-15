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

ActiveRecord::Schema.define(version: 2019_09_14_223333) do

  create_table "opinions", force: :cascade do |t|
    t.boolean "verdict"
    t.string "reason"
    t.boolean "result"
    t.integer "user_id"
    t.integer "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_opinions_on_tweet_id"
    t.index ["user_id"], name: "index_opinions_on_user_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "tw_id"
    t.float "trustscore"
    t.string "category"
    t.boolean "verified"
    t.boolean "verdict"
    t.string "tweet_url"
    t.string "html_content"
    t.string "data_posted"
    t.string "tweet_username"
    t.integer "likes_delta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.float "reputation_score"
    t.string "name"
    t.integer "age"
    t.string "login"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
