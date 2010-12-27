class CreateStudentExperiences < ActiveRecord::Migration
  def self.up
    create_table :student_experiences do |t|
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :student_experiences
  end
end
