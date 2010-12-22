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

ActiveRecord::Schema.define(:version => 20101220110406) do

  create_table "academic_calendars", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.string   "pobox"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "region"
    t.string   "town"
    t.string   "wereda"
    t.string   "kebele"
    t.integer  "student_id"
    t.string   "house_no"
    t.string   "subcity"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.string   "dean"
    t.string   "campus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "head"
    t.integer  "college_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrolment_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", :force => true do |t|
    t.integer  "enrolment_type_id"
    t.integer  "program_type_id"
    t.string   "attendance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "id_number"
    t.integer  "batch_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "sex"
    t.date     "birth_date"
    t.string   "nationality"
    t.string   "place_of_birth"
    t.string   "marital_status"
  end

end
