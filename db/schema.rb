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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100424031902) do

  create_table "achievements", :force => true do |t|
    t.integer  "badge_id"
    t.integer  "volunteer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "achievements", ["badge_id", "volunteer_id"], :name => "index_achievements_on_badge_id_and_volunteer_id", :unique => true
  add_index "achievements", ["volunteer_id"], :name => "index_achievements_on_volunteer_id"

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.integer  "threshold"
    t.text     "sql"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "badges", ["name"], :name => "index_badges_on_name", :unique => true

  create_table "events", :force => true do |t|
    t.integer  "creator_id"
    t.integer  "location_id", :null => false
    t.string   "weather",     :null => false
    t.string   "crowd_size",  :null => false
    t.date     "event_date",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "permalink"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "postcode"
    t.string   "address"
    t.string   "suburb"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.string   "web_address"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_volunteers", :force => true do |t|
    t.integer  "role_id"
    t.integer  "volunteer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", :force => true do |t|
    t.string   "given_names"
    t.string   "surname"
    t.string   "prefered_name"
    t.string   "email",               :null => false
    t.string   "skype_name"
    t.string   "mobile"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "processed_by"
    t.string   "region"
    t.date     "paid_until"
    t.string   "personal_skills"
    t.string   "crypted_password",    :null => false
    t.string   "password_salt",       :null => false
    t.string   "persistence_token",   :null => false
    t.string   "single_access_token", :null => false
    t.string   "perishable_token",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "about"
  end

end
