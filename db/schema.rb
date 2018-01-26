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

ActiveRecord::Schema.define(version: 20180126032539) do

  create_table "information", force: :cascade do |t|
    t.string   "header_image"
    t.text     "header_intro"
    t.string   "name"
    t.text     "header_description"
    t.string   "header_button_left_text"
    t.string   "header_button_left_link"
    t.string   "header_button_right_text"
    t.string   "header_button_right_link"
    t.string   "about_title"
    t.text     "about_description"
    t.string   "video_title"
    t.text     "video_description_first"
    t.text     "video_description_last"
    t.string   "video_featured"
    t.string   "video_button_text"
    t.string   "video_button_link"
    t.string   "testimonial_image"
    t.string   "contact_title"
    t.text     "contact_description"
    t.string   "vimeo"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "behance"
    t.text     "features_left_text"
    t.text     "features_left_link_text"
    t.string   "features_left_link"
    t.text     "features_middle_text"
    t.text     "features_middle_link_text"
    t.string   "features_middle_link"
    t.text     "features_right_text"
    t.text     "features_right_link_text"
    t.string   "features_right_link"
    t.string   "features_left_icon"
    t.string   "features_middle_icon"
    t.string   "features_right_icon"
    t.string   "about_image"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "email"
    t.string   "phone"
    t.string   "features_title"
    t.string   "features_left_title"
    t.string   "features_middle_title"
    t.string   "features_right_title"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.string   "captcha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.text     "quote"
    t.string   "source"
    t.integer  "order_listed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
