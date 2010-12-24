class CreateOfferredCourses < ActiveRecord::Migration
  def self.up
    create_table :offerred_courses do |t|
      t.integer :course_id
      t.integer :semester_id

      t.timestamps
    end
  end

  def self.down
    drop_table :offerred_courses
  end
end
