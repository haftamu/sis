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

ActiveRecord::Schema.define(:version => 20101216135702) do

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex",         :limit => nil
    t.date     "birth_date"
    t.string   "mother_name"
  end

  create_table "student_transfers", :force => true do |t|
    t.string   "transfered_university_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "transfered_faculty_name"
    t.string   "transfered_department_name"
    t.string   "transfered_program"
    t.string   "transfered_enrollment"
    t.integer  "effective_as_of_semester"
    t.integer  "effective_as_of_ac_year"
    t.text     "transfer_reason"
    t.datetime "application_date"
  end

  create_table "students", :force => true do |t|
    t.integer  "person_id"
    t.string   "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transfers", :force => true do |t|
    t.string   "transfered_university_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "transfered_faculty_name"
    t.string   "transfered_department_name"
    t.string   "transfered_program"
    t.string   "transfered_enrollment"
    t.integer  "effective_as_of_semester"
    t.integer  "effective_as_of_ac_year"
    t.text     "transfer_reason"
    t.datetime "application_date"
    t.string   "student_id"
    t.string   "transfer_type"
  end

end
