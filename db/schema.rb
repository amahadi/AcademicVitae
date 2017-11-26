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

ActiveRecord::Schema.define(version: 20171126150153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_backgrounds", force: :cascade do |t|
    t.bigint "admin_user_id"
    t.date "start_date"
    t.date "end_date"
    t.string "title"
    t.string "institution"
    t.float "cgpa"
    t.float "scale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "transcript_file_name"
    t.string "transcript_content_type"
    t.integer "transcript_file_size"
    t.datetime "transcript_updated_at"
    t.string "certificate_file_name"
    t.string "certificate_content_type"
    t.integer "certificate_file_size"
    t.datetime "certificate_updated_at"
    t.index ["admin_user_id"], name: "index_academic_backgrounds_on_admin_user_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
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
    t.text "biography"
    t.string "name"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "research_experiences", force: :cascade do |t|
    t.bigint "admin_user_id"
    t.string "thesis_done_for"
    t.string "thesis_title"
    t.string "institute"
    t.string "supervisor_name"
    t.string "supervisor_designation"
    t.string "supervisor_institute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_research_experiences_on_admin_user_id"
  end

  create_table "research_interests", force: :cascade do |t|
    t.bigint "admin_user_id"
    t.string "interested_field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_research_interests_on_admin_user_id"
  end

end
