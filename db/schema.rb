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

ActiveRecord::Schema.define(version: 20140728014612) do

  create_table "banners", force: true do |t|
    t.string   "name"
    t.text     "code"
    t.text     "banner_partner_code", limit: 1000
    t.integer  "views",                            default: 0
    t.integer  "clicks",                           default: 0
    t.integer  "max_views",                        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "platform_id"
    t.string   "token"
  end

  add_index "banners", ["clicks"], name: "index_banners_on_clicks"
  add_index "banners", ["max_views"], name: "index_banners_on_max_views"
  add_index "banners", ["views"], name: "index_banners_on_views"

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",  default: "",    null: false
    t.datetime "remember_created_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
