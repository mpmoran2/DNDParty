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

ActiveRecord::Schema.define(version: 20200916223739) do

  create_table "characters", force: :cascade do |t|
    t.text    "name"
    t.string  "username"
    t.string  "image",       default: "https://image.shutterstock.com/image-vector/20-sided-20d-dice-line-600w-355147958.jpg"
    t.integer "age"
    t.string  "height"
    t.string  "race"
    t.string  "job"
    t.integer "level"
    t.string  "alignment"
    t.string  "bg"
    t.text    "party_title"
    t.text    "bio"
  end

  create_table "parties", force: :cascade do |t|
    t.string "title"
    t.string "dungeon_master"
    t.string "player1"
    t.string "player2"
    t.string "player3"
    t.string "player4"
    t.string "player5"
    t.string "player6"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
