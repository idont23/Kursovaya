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

ActiveRecord::Schema.define(version: 20170517211243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinema_films", force: :cascade do |t|
    t.integer  "cinema_id",  null: false
    t.integer  "film_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cinema_films", ["cinema_id", "film_id"], name: "index_cinema_films_on_cinema_id_and_film_id", unique: true, using: :btree
  add_index "cinema_films", ["cinema_id"], name: "index_cinema_films_on_cinema_id", using: :btree
  add_index "cinema_films", ["film_id"], name: "index_cinema_films_on_film_id", using: :btree

  create_table "cinemas", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "film_genres", force: :cascade do |t|
    t.integer  "film_id",    null: false
    t.integer  "genre_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "film_genres", ["film_id", "genre_id"], name: "index_film_genres_on_film_id_and_genre_id", unique: true, using: :btree
  add_index "film_genres", ["film_id"], name: "index_film_genres_on_film_id", using: :btree
  add_index "film_genres", ["genre_id"], name: "index_film_genres_on_genre_id", using: :btree

  create_table "film_participants", force: :cascade do |t|
    t.string   "role"
    t.string   "task",           null: false
    t.integer  "film_id"
    t.integer  "participant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "film_participants", ["film_id", "participant_id"], name: "index_film_participants_on_film_id_and_participant_id", unique: true, using: :btree
  add_index "film_participants", ["film_id"], name: "index_film_participants_on_film_id", using: :btree
  add_index "film_participants", ["participant_id"], name: "index_film_participants_on_participant_id", using: :btree

  create_table "films", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "duration",      null: false
    t.string   "country",       null: false
    t.string   "cinemacompany", null: false
    t.string   "minage",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "genres", ["name"], name: "index_genres_on_name", unique: true, using: :btree

  create_table "participants", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "surname",    null: false
    t.date     "birthday",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participants", ["name", "surname"], name: "index_participants_on_name_and_surname", unique: true, using: :btree

  create_table "role_users", force: :cascade do |t|
    t.integer  "role_id",    null: false
    t.integer  "user_id",    null: false
    t.json     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "role_users", ["role_id"], name: "index_role_users_on_role_id", using: :btree
  add_index "role_users", ["user_id"], name: "index_role_users_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "info",       null: false
    t.text     "full_info",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "roles", ["info"], name: "index_roles_on_info", unique: true, using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                                       null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.date     "birthday"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  add_foreign_key "cinema_films", "cinemas"
  add_foreign_key "cinema_films", "films"
  add_foreign_key "film_genres", "films"
  add_foreign_key "film_genres", "genres"
  add_foreign_key "film_participants", "films"
  add_foreign_key "film_participants", "participants"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
end
