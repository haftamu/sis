class CreateStudentCorrespondences < ActiveRecord::Migration
  def self.up
    create_table :student_correspondences do |t|
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :student_correspondences
  end
end
