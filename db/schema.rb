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

ActiveRecord::Schema.define(version: 20200918232353) do

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.string  "npc_pc"
    t.integer "age"
    t.string  "gender"
    t.string  "height"
    t.string  "race"
    t.string  "subrace"
    t.string  "job"
    t.string  "subjob"
    t.string  "bg"
    t.string  "alignment"
    t.string  "deity"
    t.integer "level"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.string  "skill1"
    t.string  "skill2"
    t.string  "skill3"
    t.string  "skill4"
    t.string  "skill5"
    t.string  "skill6"
    t.string  "skill7"
    t.string  "skill8"
    t.string  "skill9"
    t.string  "skill10"
    t.string  "skill11"
    t.string  "skill12"
    t.string  "skill13"
    t.string  "skill14"
    t.string  "skill15"
    t.string  "skill16"
    t.string  "skill17"
    t.string  "skill18"
    t.text    "bio"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
