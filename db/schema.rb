# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_04_083753) do

  create_table "answers", force: :cascade do |t|
    t.datetime "dat"
    t.integer "vote_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vote_id_id"], name: "index_answers_on_vote_id_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.integer "event_id_id", null: false
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id_id"], name: "index_comments_on_event_id_id"
    t.index ["user_id_id"], name: "index_comments_on_user_id_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start_date"
    t.boolean "privacy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "file_events", force: :cascade do |t|
    t.string "content"
    t.integer "event_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id_id"], name: "index_file_events_on_event_id_id"
  end

  create_table "image_events", force: :cascade do |t|
    t.string "content"
    t.integer "event_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id_id"], name: "index_image_events_on_event_id_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.boolean "accept"
    t.integer "user_id_id", null: false
    t.integer "event_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id_id"], name: "index_invitations_on_event_id_id"
    t.index ["user_id_id"], name: "index_invitations_on_user_id_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_members_on_organization_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "picture"
    t.text "bio"
    t.string "location"
    t.integer "user_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id_id"], name: "index_profiles_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_events", force: :cascade do |t|
    t.string "content"
    t.integer "event_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id_id"], name: "index_video_events_on_event_id_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "invitation_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invitation_id_id"], name: "index_votes_on_invitation_id_id"
  end

  add_foreign_key "answers", "vote_ids"
  add_foreign_key "comments", "event_ids"
  add_foreign_key "comments", "user_ids"
  add_foreign_key "file_events", "event_ids"
  add_foreign_key "image_events", "event_ids"
  add_foreign_key "invitations", "event_ids"
  add_foreign_key "invitations", "user_ids"
  add_foreign_key "members", "organizations"
  add_foreign_key "members", "users"
  add_foreign_key "profiles", "user_ids"
  add_foreign_key "video_events", "event_ids"
  add_foreign_key "votes", "invitation_ids"
end
