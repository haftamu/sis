class AddStudentIdToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :student_id, :integer
  end

  def self.down
    remove_column :addresses, :student_id
  end
end
