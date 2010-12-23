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

  create_table "clearances", :force => true do |t|
    t.string   "reason_for"
    t.date     "last_date_attend"
    t.integer  "class_year"
    t.integer  "clearance_semister"
    t.date     "clearance_date"
    t.text     "reason_for_withdrawal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
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

  create_table "educational_bgds", :force => true do |t|
    t.integer  "student_id"
    t.integer  "type"
    t.string   "institution_name"
    t.string   "institution_rgn"
    t.string   "institution_zone"
    t.string   "institution_town"
    t.string   "stream"
    t.string   "reg_num"
    t.string   "result"
    t.string   "leaving_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employements", :force => true do |t|
    t.integer  "student_id"
    t.string   "job_type"
    t.string   "employer_name"
    t.text     "employer_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrolment_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_infos", :force => true do |t|
    t.integer  "student_id"
    t.string   "fathers_occ"
    t.integer  "fathers_ed_level"
    t.string   "mothers_full_name"
    t.string   "mothers_occ"
    t.integer  "mothers_ed_level"
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

  create_table "student_transfers", :force => true do |t|
    t.string   "transfered_university_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.integer  "person_id"
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

  create_table "subjects", :force => true do |t|
    t.integer  "educational_bgd_id"
    t.string   "name"
    t.string   "result"
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

  create_table "undergrad_departments", :force => true do |t|
    t.string   "departmentname"
    t.integer  "preference"
    t.integer  "undergraduate_program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undergraduate_programs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "enrollmenttype"
    t.string   "programat"
    t.integer  "band"
    t.integer  "student_id"
  end

end
