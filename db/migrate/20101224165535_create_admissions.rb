class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.integer :student_id
      t.integer :academic_calendar_id

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
