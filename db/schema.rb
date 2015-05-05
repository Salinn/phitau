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

ActiveRecord::Schema.define(version: 20150422183557) do

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

  create_table "text_messages", force: true do |t|
    t.string   "to_number"
    t.string   "user_group"
    t.string   "message"
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
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "valentines_day_delieveries", force: true do |t|
    t.integer  "red_flower_quantity"
    t.integer  "white_flower_quantity"
    t.integer  "pink_flower_quantity"
    t.integer  "large_stuffed_animial_quantity"
    t.integer  "medium_stuffed_animial_quantity"
    t.integer  "small_animial_quantity"
    t.string   "buyer_name"
    t.string   "buyer_phone_number"
    t.string   "recievers_name"
    t.string   "recievers_phone_number"
    t.string   "delivery_location"
    t.time     "delivery_time"
    t.string   "delivery_instructions"
    t.string   "payment"
    t.string   "paypal_cost"
    t.string   "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valentines_day_inventories", force: true do |t|
    t.integer  "total_red_flowers"
    t.integer  "total_white_flowers"
    t.integer  "total_pink_flowers"
    t.integer  "total_large_stuffed_animials"
    t.integer  "total_medium_stuffed_animials"
    t.integer  "total_small_stuffed_animials"
    t.float    "red_flower_price"
    t.float    "white_flower_price"
    t.float    "pink_flower_price"
    t.float    "large_stuffed_animial_price"
    t.float    "medium_stuffed_animial_price"
    t.float    "small_stuffed_animial_price"
    t.string   "current_year"
    t.integer  "red_total"
    t.integer  "white_total"
    t.integer  "pink_total"
    t.integer  "large_total"
    t.integer  "medium_total"
    t.integer  "small_total"
    t.float    "total_raised"
    t.float    "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
