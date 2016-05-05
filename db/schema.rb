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

ActiveRecord::Schema.define(version: 20160505175628) do

  create_table "detailed_users", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.binary   "Picture"
    t.string   "Gender"
    t.datetime "BirthDay"
    t.string   "SexualOrientation"
    t.text     "Description"
    t.string   "PrimaryLanguage"
    t.string   "SecondLanguage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
  end

  add_index "detailed_users", ["user_id"], name: "index_detailed_users_on_user_id"

  create_table "event_registers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "travelling_party_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "event_registers", ["event_id"], name: "index_event_registers_on_event_id"
  add_index "event_registers", ["travelling_party_id"], name: "index_event_registers_on_travelling_party_id"
  add_index "event_registers", ["user_id"], name: "index_event_registers_on_user_id"

  create_table "events", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "event_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "location"
    t.text     "description"
    t.integer  "max_participants"
    t.integer  "sailing_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "events", ["sailing_id"], name: "index_events_on_sailing_id"

  create_table "forem_categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forem_forums", force: :cascade do |t|
    t.string "title"
    t.text   "description"
  end

  create_table "forem_posts", force: :cascade do |t|
    t.integer  "topic_id"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reply_to_id"
  end

  add_index "forem_posts", ["reply_to_id"], name: "index_forem_posts_on_reply_to_id"
  add_index "forem_posts", ["topic_id"], name: "index_forem_posts_on_topic_id"
  add_index "forem_posts", ["user_id"], name: "index_forem_posts_on_user_id"

  create_table "forem_topics", force: :cascade do |t|
    t.integer  "forum_id"
    t.integer  "user_id"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "locked",     default: false, null: false
    t.boolean  "pinned",     default: false
    t.boolean  "hidden",     default: false
  end

  add_index "forem_topics", ["forum_id"], name: "index_forem_topics_on_forum_id"
  add_index "forem_topics", ["user_id"], name: "index_forem_topics_on_user_id"

  create_table "forem_views", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count",      default: 0
  end

  add_index "forem_views", ["topic_id"], name: "index_forem_views_on_topic_id"
  add_index "forem_views", ["updated_at"], name: "index_forem_views_on_updated_at"
  add_index "forem_views", ["user_id"], name: "index_forem_views_on_user_id"

  create_table "non_registered_users", force: :cascade do |t|
    t.integer  "age"
    t.string   "gender"
    t.string   "travellingparty"
    t.string   "references"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "travellingparty_id"
  end

  create_table "party_registers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "travelling_party_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "party_registers", ["travelling_party_id"], name: "index_party_registers_on_travelling_party_id"
  add_index "party_registers", ["user_id"], name: "index_party_registers_on_user_id"

  create_table "sailings", force: :cascade do |t|
    t.integer  "official_id"
    t.string   "destination_identifier"
    t.string   "cruise_ship_name"
    t.string   "cruise_ship_compay"
    t.datetime "departure_date"
    t.datetime "return_date"
    t.string   "port_of_origin"
    t.string   "port_of_destination"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "travelling_parties", force: :cascade do |t|
    t.string   "sailing"
    t.string   "references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
