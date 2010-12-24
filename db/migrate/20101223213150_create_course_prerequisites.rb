class CreateCoursePrerequisites < ActiveRecord::Migration
  def self.up
    create_table :course_prerequisites do |t|
      t.integer :course_id
      t.integer :prerequisite_id

      t.timestamps
    end
  end

  def self.down
    drop_table :course_prerequisites
  end
end
