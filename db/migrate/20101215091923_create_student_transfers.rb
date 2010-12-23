class CreateStudentTransfers < ActiveRecord::Migration
  def self.up
    create_table :student_transfers do |t|
      t.string :transfered_university_name

      t.timestamps
    end
  end

  def self.down
    drop_table :student_transfers
  end
end
