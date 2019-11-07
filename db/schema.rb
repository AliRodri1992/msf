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

ActiveRecord::Schema.define(version: 2019_11_07_182925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "nickname"
    t.integer "level"
    t.integer "pid"
    t.integer "total_collection_power", default: 0
    t.integer "strongest_team_power", default: 0
    t.integer "war_mvp", default: 0
    t.integer "total_characters_collected", default: 0
    t.integer "all_time_arena_rank"
    t.integer "latest_arena_rank"
    t.integer "all_time_blitz_rank"
    t.integer "latest_blitz_rank"
    t.integer "blitz_win"
    t.integer "characters_at_max_star_rank"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_accounts_on_deleted_at"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "allegiances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_allegiances_on_deleted_at"
  end

  create_table "base_stats", force: :cascade do |t|
    t.bigint "character_id"
    t.integer "health"
    t.integer "damage"
    t.integer "armor"
    t.integer "focus"
    t.integer "resistance"
    t.integer "critical_damage"
    t.integer "critical_chance"
    t.integer "speed"
    t.integer "dodge_chance"
    t.integer "block_chance"
    t.integer "block_amount"
    t.integer "accuracy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["character_id"], name: "index_base_stats_on_character_id"
    t.index ["deleted_at"], name: "index_base_stats_on_deleted_at"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "min_level"
    t.integer "max_level"
    t.bigint "allegiance_id"
    t.bigint "jurisdiction_id"
    t.bigint "origin_id"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["allegiance_id"], name: "index_characters_on_allegiance_id"
    t.index ["deleted_at"], name: "index_characters_on_deleted_at"
    t.index ["jurisdiction_id"], name: "index_characters_on_jurisdiction_id"
    t.index ["origin_id"], name: "index_characters_on_origin_id"
    t.index ["type_id"], name: "index_characters_on_type_id"
  end

  create_table "characters_organizations", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["character_id"], name: "index_characters_organizations_on_character_id"
    t.index ["deleted_at"], name: "index_characters_organizations_on_deleted_at"
    t.index ["organization_id"], name: "index_characters_organizations_on_organization_id"
  end

  create_table "collections", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "character_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_collections_on_account_id"
    t.index ["character_id"], name: "index_collections_on_character_id"
    t.index ["deleted_at"], name: "index_collections_on_deleted_at"
  end

  create_table "jurisdictions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_jurisdictions_on_deleted_at"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_organizations_on_deleted_at"
  end

  create_table "origins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_origins_on_deleted_at"
  end

  create_table "rol", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_rol_on_deleted_at"
  end

  create_table "skill_levels", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "description"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_skill_levels_on_deleted_at"
    t.index ["skill_id"], name: "index_skill_levels_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["character_id"], name: "index_skills_on_character_id"
    t.index ["deleted_at"], name: "index_skills_on_deleted_at"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_types_on_deleted_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.bigint "rol_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["rol_id"], name: "index_users_on_rol_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "base_stats", "characters"
  add_foreign_key "characters", "allegiances"
  add_foreign_key "characters", "jurisdictions"
  add_foreign_key "characters", "origins"
  add_foreign_key "characters", "types"
  add_foreign_key "characters_organizations", "characters"
  add_foreign_key "characters_organizations", "organizations"
  add_foreign_key "collections", "accounts"
  add_foreign_key "collections", "characters"
  add_foreign_key "skill_levels", "skills"
  add_foreign_key "skills", "characters"
  add_foreign_key "users", "rol"
end
