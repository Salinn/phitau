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

ActiveRecord::Schema.define(version: 20151014182640) do

  create_table "alumni_eternal_stories", force: true do |t|
    t.integer  "user_id"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "alumni_eternal_id"
    t.datetime "deleted_at"
  end

  add_index "alumni_eternal_stories", ["deleted_at"], name: "index_alumni_eternal_stories_on_deleted_at"

  create_table "alumni_eternals", force: true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "alumni_eternals", ["deleted_at"], name: "index_alumni_eternals_on_deleted_at"

  create_table "alumni_news_letters", force: true do |t|
    t.date     "released_date"
    t.string   "alumni_new_letter_pdf"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "news_letter_html",      limit: 255
    t.datetime "deleted_at"
  end

  add_index "alumni_news_letters", ["deleted_at"], name: "index_alumni_news_letters_on_deleted_at"

  create_table "attendances", force: true do |t|
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendances", ["event_id"], name: "index_attendances_on_event_id"

  create_table "attendances_users", id: false, force: true do |t|
    t.integer "attendance_id", null: false
    t.integer "user_id",       null: false
  end

  add_index "attendances_users", ["attendance_id", "user_id"], name: "index_attendances_users_on_attendance_id_and_user_id"
  add_index "attendances_users", ["user_id", "attendance_id"], name: "index_attendances_users_on_user_id_and_attendance_id"

  create_table "bids", force: true do |t|
    t.integer  "rush_interview_id"
    t.string   "bid_given"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bids", ["rush_interview_id"], name: "index_bids_on_rush_interview_id"

  create_table "community_services", force: true do |t|
    t.string   "event_name"
    t.date     "date_of_event"
    t.string   "link_to_event"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hours_volunteered"
    t.datetime "deleted_at"
  end

  add_index "community_services", ["deleted_at"], name: "index_community_services_on_deleted_at"

  create_table "composites", force: true do |t|
    t.string   "year"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "composites", ["deleted_at"], name: "index_composites_on_deleted_at"

  create_table "current_residences", force: true do |t|
    t.string   "building_name"
    t.integer  "map_location"
    t.boolean  "dorm_side"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
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

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.time     "start_time"
    t.time     "end_time"
    t.date     "event_date"
    t.boolean  "required_event"
    t.boolean  "private_event"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "faq_categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faq_questions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "faq_category_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
    t.datetime "deleted_at"
  end

  add_index "galleries", ["deleted_at"], name: "index_galleries_on_deleted_at"

  create_table "images", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gallery_id"
    t.integer  "post_id"
    t.string   "picture"
    t.datetime "deleted_at"
  end

  add_index "images", ["deleted_at"], name: "index_images_on_deleted_at"

  create_table "interview_questionnaires", force: true do |t|
    t.date     "date_of_birth"
    t.string   "hometown"
    t.string   "room_number"
    t.string   "grade_point_average"
    t.string   "major"
    t.integer  "year_in_school"
    t.string   "nickname"
    t.text     "outside_activities"
    t.text     "hobbies"
    t.text     "brothers_you_know"
    t.string   "rush_events_attended"
    t.text     "reason_for_rushing"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.datetime "deleted_at"
    t.integer  "current_residence_id"
  end

  add_index "interview_questionnaires", ["deleted_at"], name: "index_interview_questionnaires_on_deleted_at"

  create_table "interview_times", force: true do |t|
    t.integer  "rush_interview_id"
    t.time     "interview_time"
    t.date     "interview_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "interview_times", ["deleted_at"], name: "index_interview_times_on_deleted_at"
  add_index "interview_times", ["rush_interview_id"], name: "index_interview_times_on_rush_interview_id"

  create_table "paddles", force: true do |t|
    t.string   "pledge_class"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "paddles", ["deleted_at"], name: "index_paddles_on_deleted_at"

  create_table "positions", force: true do |t|
    t.string   "position_name"
    t.integer  "user_id"
    t.integer  "role_id"
    t.boolean  "on_eboard"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "positions", ["deleted_at"], name: "index_positions_on_deleted_at"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.boolean  "top_card"
    t.datetime "deleted_at"
  end

  add_index "posts", ["deleted_at"], name: "index_posts_on_deleted_at"

  create_table "receipts", force: true do |t|
    t.string   "total_spent"
    t.string   "picture_of_receipt"
    t.boolean  "seen_receipt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.datetime "deleted_at"
  end

  add_index "receipts", ["deleted_at"], name: "index_receipts_on_deleted_at"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "roles", ["deleted_at"], name: "index_roles_on_deleted_at"

  create_table "rush_interviews", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "photo"
  end

  add_index "rush_interviews", ["deleted_at"], name: "index_rush_interviews_on_deleted_at"
  add_index "rush_interviews", ["user_id"], name: "index_rush_interviews_on_user_id"

  create_table "standards_boards", force: true do |t|
    t.integer  "user_id"
    t.text     "reason"
    t.integer  "position_id"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "standards_boards", ["position_id"], name: "index_standards_boards_on_position_id"
  add_index "standards_boards", ["user_id"], name: "index_standards_boards_on_user_id"

  create_table "text_messages", force: true do |t|
    t.string   "to_number"
    t.string   "user_group"
    t.text     "message",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact_info"
    t.datetime "deleted_at"
  end

  add_index "text_messages", ["deleted_at"], name: "index_text_messages_on_deleted_at"

  create_table "users", force: true do |t|
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
    t.integer  "failed_attempts",        default: 3,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.string   "activities"
    t.string   "phone_number"
    t.string   "position"
    t.string   "home_town"
    t.string   "state"
    t.string   "big_brother"
    t.string   "major"
    t.string   "pledge_class"
    t.boolean  "confirmed_brother"
    t.string   "user_status"
    t.datetime "deleted_at"
    t.string   "ritual_number_local"
    t.string   "ritual_number_national"
    t.string   "home_address"
    t.string   "parents_contact_info"
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
