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

ActiveRecord::Schema.define(version: 20170613145903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_at"
    t.date     "finish_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "band_id"
    t.integer  "place_id"
    t.index ["band_id"], name: "index_availabilities_on_band_id", using: :btree
    t.index ["place_id"], name: "index_availabilities_on_place_id", using: :btree
  end

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.string   "rehearsal_address"
    t.string   "band_facebook"
    t.integer  "members_number"
    t.string   "band_photo"
    t.boolean  "band_mersh"
    t.integer  "set_time"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "genre_id"
    t.integer  "age"
    t.integer  "type_id"
    t.text     "involvement"
    t.boolean  "transport_autonomy"
    t.string   "audio"
    t.index ["genre_id"], name: "index_bands_on_genre_id", using: :btree
    t.index ["type_id"], name: "index_bands_on_type_id", using: :btree
    t.index ["user_id"], name: "index_bands_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "places", force: :cascade do |t|
    t.string   "place_name"
    t.string   "place_address"
    t.string   "place_facebook"
    t.integer  "capacity"
    t.string   "place_photo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "genre_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_places_on_category_id", using: :btree
    t.index ["genre_id"], name: "index_places_on_genre_id", using: :btree
    t.index ["user_id"], name: "index_places_on_user_id", using: :btree
  end

  create_table "show_makers", force: :cascade do |t|
    t.boolean  "transport"
    t.text     "available_equipment"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "show_id"
    t.integer  "place_id"
    t.integer  "band_id"
    t.integer  "structure_id"
    t.index ["band_id"], name: "index_show_makers_on_band_id", using: :btree
    t.index ["place_id"], name: "index_show_makers_on_place_id", using: :btree
    t.index ["show_id"], name: "index_show_makers_on_show_id", using: :btree
    t.index ["structure_id"], name: "index_show_makers_on_structure_id", using: :btree
    t.index ["user_id"], name: "index_show_makers_on_user_id", using: :btree
  end

  create_table "shows", force: :cascade do |t|
    t.integer  "show_price"
    t.string   "facebook_event"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "availabilities", "bands"
  add_foreign_key "availabilities", "places"
  add_foreign_key "bands", "genres"
  add_foreign_key "bands", "types"
  add_foreign_key "bands", "users"
  add_foreign_key "places", "categories"
  add_foreign_key "places", "genres"
  add_foreign_key "places", "users"
  add_foreign_key "show_makers", "bands"
  add_foreign_key "show_makers", "places"
  add_foreign_key "show_makers", "shows"
  add_foreign_key "show_makers", "structures"
  add_foreign_key "show_makers", "users"
end
