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

ActiveRecord::Schema.define(:version => 20110510011759) do

  create_table "awards_program_categories", :force => true do |t|
    t.integer  "awards_program_class_id", :null => false
    t.string   "name",                    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards_program_classes", :force => true do |t|
    t.integer  "awards_program_id", :null => false
    t.string   "classification",    :null => false
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards_program_species", :force => true do |t|
    t.integer  "awards_program_class_id"
    t.integer  "awards_program_category_id"
    t.string   "name",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "awards_programs", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "baps", :force => true do |t|
    t.integer  "member_id"
    t.date     "report_date"
    t.boolean  "spawn_planned"
    t.text     "comment"
    t.integer  "member_bap_id"
    t.string   "latin_name"
    t.string   "common_name"
    t.date     "date_of_spawn"
    t.string   "spawn_site"
    t.string   "spawn_type"
    t.date     "date_of_hatch"
    t.integer  "number_of_eggs"
    t.integer  "number_of_fry"
    t.string   "publication_cited"
    t.string   "obtained_from"
    t.integer  "aquarium_length"
    t.integer  "aquarium_width"
    t.integer  "aquarium_height"
    t.integer  "temperature"
    t.string   "lighting_type"
    t.integer  "lighting_watts"
    t.decimal  "ph",                      :precision => 10, :scale => 0
    t.decimal  "dh",                      :precision => 10, :scale => 0
    t.string   "filter_type"
    t.string   "food_for_parents"
    t.string   "food_for_fry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "submitted"
    t.string   "verified_by"
    t.date     "verified_date"
    t.integer  "awards_program_class_id"
  end

  create_table "dealer_locations", :force => true do |t|
    t.integer  "dealer_id",  :null => false
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealers", :force => true do |t|
    t.string   "name",               :null => false
    t.string   "email"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "executive_members", :force => true do |t|
    t.integer  "member_id",             :null => false
    t.integer  "executive_position_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "executive_positions", :force => true do |t|
    t.string   "position_name",                      :null => false
    t.boolean  "voting_position", :default => false
    t.string   "email",                              :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "haps", :force => true do |t|
    t.date     "report_date"
    t.integer  "awards_program_class_id"
    t.string   "latin_name"
    t.string   "common_name"
    t.string   "fertilizer"
    t.string   "planting_method"
    t.boolean  "co2_no"
    t.boolean  "co2_diy"
    t.boolean  "co2_pressurized"
    t.string   "substrate"
    t.boolean  "flourescent"
    t.boolean  "halide"
    t.boolean  "incandescent"
    t.boolean  "natural"
    t.boolean  "other"
    t.string   "other_comment"
    t.decimal  "duration_on",             :precision => 10, :scale => 0
    t.decimal  "wattage",                 :precision => 10, :scale => 0
    t.integer  "tank_length"
    t.integer  "tank_width"
    t.integer  "tank_height"
    t.decimal  "temperature",             :precision => 10, :scale => 0
    t.decimal  "ph",                      :precision => 10, :scale => 0
    t.decimal  "gh",                      :precision => 10, :scale => 0
    t.decimal  "kh",                      :precision => 10, :scale => 0
    t.integer  "num_water_changes"
    t.integer  "percent_water_change"
    t.string   "fish_type_present"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "submitted"
    t.string   "verified_by"
    t.date     "verified_date"
  end

  create_table "librarybooks", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "author"
    t.string   "publisher"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", :force => true do |t|
    t.date     "meeting_date", :null => false
    t.string   "event"
    t.string   "speaker"
    t.text     "program"
    t.text     "announcement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_bap_forms", :force => true do |t|
    t.integer  "member_id"
    t.date     "report_date"
    t.boolean  "spawn_planned",                                    :default => false
    t.text     "comment"
    t.integer  "member_bap_id"
    t.string   "latin_name"
    t.string   "common_name"
    t.date     "date_of_spawn"
    t.string   "spawn_site"
    t.string   "spawn_type"
    t.date     "date_of_hatch"
    t.integer  "number_of_eggs"
    t.integer  "number_of_fry"
    t.string   "publication_cited"
    t.string   "obtained_from"
    t.integer  "aquarium_length"
    t.integer  "aquarium_width"
    t.integer  "aquarium_height"
    t.integer  "temperature"
    t.string   "lighting_type"
    t.integer  "lighting_watts"
    t.decimal  "ph",                :precision => 10, :scale => 0
    t.decimal  "dh",                :precision => 10, :scale => 0
    t.string   "filter_type"
    t.string   "food_for_parents"
    t.string   "food_for_fry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name",                 :null => false
    t.string   "address_crypted"
    t.string   "city_crypted"
    t.integer  "province_id"
    t.string   "phone_number_crypted"
    t.string   "postal_code_crypted"
    t.string   "email_crypted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", :force => true do |t|
    t.string   "title",            :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
  end

  create_table "notification_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.integer  "notification_type_id", :null => false
    t.string   "title",                :null => false
    t.text     "message"
    t.integer  "user_id",              :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.integer  "member_id"
    t.string   "encrypted_login_name",                    :null => false
    t.string   "hashed_password",                         :null => false
    t.string   "salt",                                    :null => false
    t.boolean  "administrator",        :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
