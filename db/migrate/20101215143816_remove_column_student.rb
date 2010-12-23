class RemoveColumnStudent < ActiveRecord::Migration
  def self.up
    remove_column :students, :faculty
    remove_column :students, :department
    remove_column :students, :class_year
    remove_column :students, :academic_year
    remove_column :students, :program
    remove_column :students, :enrollment_type
    remove_column :students, :transfered_university_name
    remove_column :students, :transfered_faculty_name
    remove_column :students, :transfered_department_name
    remove_column :students, :transfered_program
    remove_column :students, :transfered_enrollment
    remove_column :students, :effective_as_of_semester
    remove_column :students, :effective_as_of_ac_year
    remove_column :students, :transfer_reason
    remove_column :students, :application_date

    
 
     
  end

  def self.down
  end
end
