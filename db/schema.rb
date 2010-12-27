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

ActiveRecord::Schema.define(:version => 20101224185711) do

  create_table "academic_calendars", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "academic_professional_qualifications", :force => true do |t|
    t.datetime "date"
    t.string   "certificate_attachment"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admission_types", :force => true do |t|
    t.integer  "enrollment_type_id"
    t.integer  "program_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admissions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "academic_calendar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_type_id"
    t.integer  "enrollment_type_id"
    t.string   "entry_level"
  end

  create_table "campus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_prerequisites", :force => true do |t|
    t.integer  "course_id"
    t.integer  "prerequisite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "code"
    t.float    "credit_hour"
    t.text     "description"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "department_choices", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "college_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educational_backgrounds", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_backgrounds", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollment_types", :force => true do |t|
    t.string   "name"
    t.string   "mode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_backgrounds", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financial_supports", :force => true do |t|
    t.string   "support_type"
    t.string   "Name"
    t.string   "address"
    t.string   "financial_attachment"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "higer_education_backgrounds", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerred_courses", :force => true do |t|
    t.integer  "course_id"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "father_name"
    t.string   "grand_father_name"
    t.string   "sex"
    t.date     "birth_date"
    t.string   "mother_full_name"
    t.string   "nationality"
    t.string   "ethnic_group"
    t.string   "mother_tounge"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "marital_status"
  end

  create_table "person_addresses", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_contacts", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referees", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relevant_publications", :force => true do |t|
    t.string   "description"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_teaching_experiences", :force => true do |t|
    t.string   "description"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", :force => true do |t|
    t.string   "name"
    t.integer  "academic_calendar_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_correspondences", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_experiences", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_publications", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_qualifications", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_referees", :force => true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.integer  "person_id"
    t.string   "id_number"
    t.date     "date_joined"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admission_id"
  end

end
